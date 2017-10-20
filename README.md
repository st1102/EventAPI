# EventAPI

## Overview
イベントの管理を行うAPI
各イベントは「id, date, start, end, schedule, created_at, updated_at」のカラムを持つ
データベースから取得

## Description
### 言語とWAF
ruby + sinatra

### リソース
・`GET /events/yyyy/mm`でイベントリストを返す(e.g. `/events/2017/10`)  
・`POST /events/yyyy/mm`で新規イベントを登録  
・`DELETE /events/:id`で指定したIDのイベントを1件削除  

### データ形式
Json

## Demo

## Licence

## Author
Shota Itabashi
