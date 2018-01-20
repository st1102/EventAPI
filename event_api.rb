require 'sinatra'
require 'json'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class Event < ActiveRecord::Base
  # validates :start, presence: true, format: { with: /\d{2}:\d{2}:\d{2}/ }
  # validates :end, presence: true, format: { with: /\d{2}:\d{2}:\d{2}/ }
  # validates :schedule, presence: true
end

# 年月指定でイベントを全件取得
get '/events/:year/:month' do
  event = Event.where("start like #{"\"" + params[:year] + "-" + format('%02d', params[:month]) + "-" + "%" + "\""}")
               .order("start")
               .to_json
end

# id指定で一件のイベントを取得
get '/events/:id' do
  event = Event.find(params[:id])
               .to_json
end

# イベントを新規登録
post '/events' do
new_event = Event.new(start: params[:start], end: params[:end], schedule: params[:schedule], memo: params[:memo])
new_event.save
end

# イベントの内容を更新
put '/events/:id' do
  event = Event.find(params[:id])
  event.update(date: params[:date], start: params[:start], end: params[:end], schedule: params[:schedule])
end

# イベントをid指定で削除
delete '/events/:id' do
  event = Event.find(params[:id])
  event.destroy
end
