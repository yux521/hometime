class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # アソシエーション
  has_many :recipes
  has_many :comments

  # 空の投稿を保存できない
  with_options presence: true do
    validates :nickname
  end

  # ユーザー名 半角アルファベット（大文字・小文字）
  with_options presence: true, format: { with: /\A[a-zA-Z]+\z/ } do
    validates :lastname
    validates :firstname
  end

  # パスワード（半角英数字混合）の正規表現
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX
end
