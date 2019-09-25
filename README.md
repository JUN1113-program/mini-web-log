# Mini-Web-Log
簡易なブログアプリケーションです
[![Image from Gyazo](https://i.gyazo.com/265bdb94a39b0bd21c06dc0c55d86126.png)](https://gyazo.com/265bdb94a39b0bd21c06dc0c55d86126)

## スタートガイド
https://miniweblog.herokuapp.com/

https://miniweblog.herokuapp.com/users/sign_up
にアクセスし、アカウントを作成する
[![Image from Gyazo](https://i.gyazo.com/e91a2c3b462e0d77a445b2a3c70f1cc4.png)](https://gyazo.com/e91a2c3b462e0d77a445b2a3c70f1cc4)

右上アイコンの紙飛行機から記事の投稿ができます。


### 必要条件
chromeの最新版をご利用ください

＊local環境で利用する場合はRuby2.5.1,Rails5.2,Bundler 2.0.2の導入が必要です

### local環境へのインストール

```cmd
$ cd 任意のディレクトリに移動
$ git clone https://github.com/JUN1113-program/mini-web-log.git
$ cd mini-web-log/
$ bundle install
$ bundle exec rake db:migrate
$ bundle exec rails s
```

その後chromeにて
http://localhost:3000/ にアクセスします

## テストの実行
```cmd
$ bundle exec rspec
```