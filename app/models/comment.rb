class Comment < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :recipe

  # 空の投稿を保存できない
  validates :text, presence: true
end
