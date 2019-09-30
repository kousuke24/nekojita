* WEBサイト名
ねこじた

* サイト概要・説明
「ねこの画像を投稿するWEBサイト」

_「会員登録・ログイン」していないユーザー_
・投稿されたねこの画像を見ることができる。
・投稿されている画像の詳細ページで、画像タイトルと投稿したユーザーのプロフィール画像とユーザー名を見ることができる。
・画像を投稿したユーザーの詳細ページに行き、そのユーザーが投稿した画像一覧とお気に入り画像一覧を見ることができる。

_「会員登録・ログイン」しているユーザー_
・「会員登録・ログイン」していないユーザーと同じ体験が可能。
・画像の投稿、削除ができるようになる。
・気に入ったねこの画像は、お気に入りボタンを押しユーザー詳細ページで一覧表示することができる。
・登録情報の編集「name,email,password」の変更が可能。※パスワードを入力しなくても変更できる。
・ユーザープロフィール画像の設定、変更ができる。
・登録後ユーザーの退会ができる。

* 環境
Ruby 2.6.4
Rails 6.0.0
postgres(PostgreSQL) 11.5

* ライブラリ
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'devise'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'rails-i18n'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'dotenv-rails'
gem 'kaminari'

* デプロイ
Heroku

* 作者
西塚功亮
mail to : nisizuka2424@gmail.com
