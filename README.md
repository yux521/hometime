# Home Time

コロナでおうちにいる時間が増えた今こそ<br>
毎日の食事に注目しました！<br>
美味しいご飯で家族との時間をもっと素晴らしい時間に<br>
してもらいたいと思いレシピアプリを作成しました<br>

### 課題
こんな声をよく効きます。<br>
・外出が減り、コミュニケーションの機会が減っている<br>
・毎日何を作ろうか悩む、メニューを考えるのがめんどくさい<br>
・レシピを探すときにごちゃごちゃして探しにくい<br>
・料理中にいちいちログインがめんどくさい<br>
・時間がない<br>
・探すのが手間<br>


### ↓こんなアプリを目指しました
シンプルで<br>
検索しやすく<br>
コミュニケーションも取れる<br>

## 簡単なアプリの概要
シンプルなデザインのレシピ共有アプリです。<br>
トップ頁はログインをした人が投稿したレシピの一覧を表示<br>
deviceのユーザー管理機能を使い、<br>
ログインしなくても使える機能と<br>
ログインした人だけ使える機能に分けて実装しました。<br>


![ログインしてないユーザー](https://github.com/yux521/hometime/blob/master/65f9bfac76069a42b68556d9451c488f.png)
### ログインしていないユーザー（未登録含む）
・時間がない<br>
・携帯を持って手を汚したくない<br>
・携帯を汚れたてで、なるべく触りたくない<br>
・いちいちレシピを見るたびにログインをするのはめんどくさい<br>

そんなユーザーのためにログインなしにし、シンプルで探しやすくしました<br>
レシピの詳細ページには、ログインしていないのでコメント機能は表示されません<br>
レシピのみを探して、すぐに料理にとりかかれるようにシンプルな機能です<br>
ユーザー登録をしている方も、していない方も、この機能は使えます<br>


![ログイン中のユーザー](https://github.com/yux521/hometime/blob/master/16fa9a6408db5e70c79b361165875f08.png)
### ログイン中のユーザー
ログインしていないユーザーの機能＋下記の機能ができます<br>
・自身のオリジナルレシピの投稿<br>
・投稿したレシピ内で、他ユーザーとのコミュニケーションがとれます<br>

投稿が完了すると、ログインしていればそのレシピにコメント欄が表示されるので、コミュニケーションが取れる<br>
時間のかかるレシピ投稿やコメントのやり取りは携帯をゆっくり触ることができる時に、ログインをし使えるようにしています<br>

![レスポンシブ対応](https://github.com/yux521/hometime/blob/master/23689fcdf949de38c2d7772284b2a328.png)

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

## 画面遷移図
![画面遷移図](https://github.com/yux521/hometime/blob/master/db8c5ba4bc8d07d972960a6d39b57e66.png)


## ER図
![ER図](https://github.com/yux521/hometime/blob/master/79379a9e086793d7d922438931361a22.png)

## テーブル設計

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

## 使用言語技術

### 使用Gem
rspec-rails<br>
factory_bot_rails<br>
faker<br>
devise<br>　
pry-rails<br>
rails-i18n<br>
active_hash<br>
mini_magics<br>
image_processing<br>

### バックエンド
Ruby 2.6.5<br>
Ruby on Rails 6.0.3.4<br>

### フロント
HTML<br>
CSS<br>
SCSS<br>
Bootstrap<br>

### データベース
mysql2 　0.5.3<br>

### テスト
RSpec<br>
FactoryBot<br>
Faker<br>


## こだわったポイント
・ユーザーの使いやすさを考えニーズによって、ログインを使い分けしたこと<br>
・エラーを日本語表記に変更<br>
#### トップ画面<br>
・レシピを一覧で表示しパッと見で選べる<br>
・美味しそう、作ってみたいと視覚で感じてもらえるように、画像をメンイにし文字を減らす<br>
・シンプルなデザインで、レシピ写真を目立たせる<br>
・料理中のユーザーのことを考えログインないで、レシピがみれる<br>
・レシピが増えると探すのが手間なので、検索機能をつけることで軽減<br>
#### 詳細頁<br>
・自分が投稿したレシピのみ削除と編集ができる<br>
・他のユーザーのレシピ詳細に編集、削除は出ない<br>
・ログインしている場合のみ、レシピの下にコメント機能が出る<br>

## 今後の実装してみたい機能
 ログインなしのユーザー<br>
 ・タイマー　料理をする時に必須（レシピ詳細で使えるとなお使いやすい）<br>
 
 ログイン中のユーザー<br>
  ・カレンダー<br>
  ・家計簿<br>
  ・料理の写真保存　 レシピとは違い、簡単に投稿でき、作った料理の写真を保存できる<br>
  ・メモ帳　　　　　 料理を作りながら買わないといけないものや、<br>　
  　　　　　　　　レシピのアイデアが出た時に思いついたらすぐに記入できる<br>　



