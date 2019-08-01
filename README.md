# 進行表

## 概要
---
## DateBase設計
所要時間( 30分)  
ER図  
create_DB.mdの編集  

## 仮置のビューとスタイルシートを作成
所要時間( 300分)  
applicationでheader領域の作成  
indexでメインのブログ一覧が表示されるように  
showでブログの詳細が表示されるように  
searchでブログ内容の検索ができるように  
editでブログの編集画面へ  
createでブログの作成画面へ  
login画面でログインできるように  
sign_in画面でアカウントを作れるように  
user/editでユーザー情報を編集できるように  

## Railsのコード記述  
所要時間( 300分)  
deviseのインストールとSetting   
ブログの投稿機能の実装 create  
ブログの編集と削除の実装 edit update destory  
routingの設定(resoucesで一括)  
- web-logコントローラー
- commentsコントローラー
- usersコントローラーはdeviseで   

modelの作成
- usersはデバイスで
- Blog-model
- comment-model
- imageはcarrywaveとminimagikで
- アソシエーションの設定
- DBの実装

