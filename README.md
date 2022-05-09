# README

a-1
ウィンドウユーザのみDockerfile の

#RUN useradd -m username && \
#echo "username:userpass" | chpasswd

username部分を変更する(自分のwhoamiにあわせる)

a-2
※winのみsudoがひつよう
sudo docker-compose build --no-cache

a-3
DB createをする
sudo docker-compose run web rails db:create

b-1:(2回目以降はDockerfileの更新なければ以下から)
docker-compose up -d

※起動したらa-1部分は最初の状態に戻す

b-2:
docker-compose exec --user username /bin/bash
上記設定したuserでコンテナにログインする

④終わるときは ctr+c、ctr+d でコンテナから抜けて
docker-compose stop （通常こちらで言い）
か
docker-compose dowm

をする

注意＞
・rails new や generate するときはコンテナ内で上記ユーザーでやる

・テーブル作成時にログが書き込めない（パーミッション）
適宜書き込み権限を与える
sudo chmod 666 src/logs/development.log











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
