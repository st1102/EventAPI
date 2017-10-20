require 'sinatra'
require 'json'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class Event < ActiveRecord::Base
end

# 年月指定でイベントを全件取得
get '/events/:year/:month' do
  event = Event.where("date like #{"\"" + params[:year] + "-" + params[:month] + "-" + "%" + "\""}")
               .order("start")
               .to_json
end

# イベントを新規登録
post '/events/:year/:month' do
  event = JSON.parse(request.body.read)
  new_event = Event.new(event)
  new_event.save
end

# イベントをid指定で削除
delete '/events/:id' do
  event = Event.find(params[:id])
  event.destroy
end
