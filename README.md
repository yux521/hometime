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



# ER図
![画像名](https://docs.google.com/document/d/1cxuqf2OPtM1FMn15pTQ-4Ght6XOADkyDh6dgKMIL4nY/edit)
![代替文字列](URL "タイトル")

<img src="attach:cat.jpg" alt="attach:cat" title="attach:cat" width="200" height="200">



# 画面遷移図

使用言語技術
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


# 今後の実装機能


