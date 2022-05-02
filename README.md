# README

①ウィンドウユーザはDockerfile の

#RUN useradd -m username && \
#echo "username:userpass" | chpasswd

部分を変更する

②docker-compose up -d

※起動したら①部分は最初の状態に戻す

③docker-compose exec --name username /bin/bash
上記でコンテナにログインする

④終わるときはctr+c、ctr+dでコンテナから抜けて
docker-compose stop
か
docker-compose dowm

をする

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
