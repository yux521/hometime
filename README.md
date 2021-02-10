# Home Time
コロナでおうちにいる時間が増えた今こそ<br>
毎日の食事に注目しました！<br>
美味しいご飯で家族との時間をもっと素晴らしい時間に<br>
してもらいたいと思いレシピアプリを作成<br>

### 課題
こんな声をよく効きます。<br>
・外出が減り、コミュニケーションの機会が減っている<br>
・毎日何を作ろうか悩む、メニューを考えるのがめんどくさい<br>
・レシピを探すとき、いちいちログインがめんどくさい<br>
・探すのが手間<br>

### ↓こんなアプリを目指しました
シンプルで<br>
検索しやすく<br>
コミュニケーションも取れる<br>

### 簡単なアプリの概要

![ログイン時の機能](https://github.com/yux521/hometime/blob/master/65f9bfac76069a42b68556d9451c488f.png)
![画像名](https://github.com/yux521/hometime/blob/master/79379a9e086793d7d922438931361a22.png)
![画像名](https://github.com/yux521/hometime/blob/master/79379a9e086793d7d922438931361a22.png)
![レスポンシブ対応](https://github.com/yux521/hometime/blob/master/23689fcdf949de38c2d7772284b2a328.png)

## コンセプト

## 実装機能
ユーザー管理機能<br>
新規作成機能<br>
編集機能<br>
削除機能<br>
一覧機能<br>
画像投稿機能<br>
検索機能<br>
エラーの日本語表記<br>
コメント機能<br>



## ER図
![画像名](https://github.com/yux521/hometime/blob/master/79379a9e086793d7d922438931361a22.png)



## 画面遷移図



# テーブル設計

## Users テーブル

| Column                  | Type   | Options     |
| ----------------------- | ------ | ----------- |
| email                   | string | null: false |
| encrypted_password      | string | null: false |
| nickname                | string | null: false |
| lastname                | string | null: false |
| firstname               | string | null: false |


### Association
- has_many :recipes
- has_many :comments

## Recipes テーブル

| Column           | Type        | Options          |
| ---------------- | ----------- | ---------------- |
| title            | string      | null: false      |
| guideline_id     | integer     | null: false      |
| memo             | text        | null: false      |
| ingredient_1     | text        | null: false      |
| ingredient_2     | text        |                  |
| ingredient_3     | text        |                  |
| ingredient_4     | text        |                  |
| ingredient_5     | text        |                  |
| ingredient_6     | text        |                  |
| ingredient_7     | text        |                  |
| ingredient_8     | text        |                  |
| ingredient_9     | text        |                  |
| ingredient_10    | text        |                  |
| cook_1           | text        | null: false      |
| cook_2           | text        |                  |
| cook_3           | text        |                  |
| cook_4           | text        |                  |
| cook_5           | text        |                  |
| cook_6           | text        |                  |
| cook_7           | text        |                  |
| cook_8           | text        |                  |
| cook_9           | text        |                  |
| cook_10          | text        |                  |
| user             | references  | foreign_key: true|


### Association
- belongs_to :user
- has_many :comments
- has_one_attached :image

### ActiveHash
- belongs_to :guideline

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| recipe  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :recipe






# 使用言語技術
バックエンド
Ruby 2.6.5
Ruby on Rails 6.0.3.4

# 使用Gem
rspec-rails
factory_bot_rails
faker
devise　
pry-rails
rails-i18n
active_hash
mini_magics
image_processing

# フロント
HTML
CSS
SCSS
Bootstrap

# データベース
mysql2 　0.5.3

# テスト
RSpec　
FactoryBot
Faker


# こだわったポイント

料理の写真が目立つように、デザインはシンプルに
ユーザーのニーズによって、ログインを使い分けした
検索機能
エラーを日本語表記に変更



# 今後の実装機能










