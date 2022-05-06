# README

a-1
ウィンドウユーザのみDockerfile の

#RUN useradd -m username && \
#echo "username:userpass" | chpasswd

username部分を変更する(自分のwhoamiにあわせる)

a-2
DB createを先にしておく（起動したときに赤くなった場合「create database」ボタンを押す）
docker-compose run web rails db:create
※imageがすでにあるとエラーになります
※sudo chmod 666 logs/development.log をする

b-1:
docker-compose up -d

※起動したら①部分は最初の状態に戻す
※初回はsudoが必要かも

b-2:
docker-compose exec --name username /bin/bash
上記設定したuserでコンテナにログインする

④終わるときはctr+c、ctr+dでコンテナから抜けて
docker-compose stop （通常こちらで言い）
か
docker-compose dowm

をする
※downした場合次のup時はaのユーザー情報を再度実行する

注意＞
・rails new や generate するときはコンテナ内で上記ユーザーでやる


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
