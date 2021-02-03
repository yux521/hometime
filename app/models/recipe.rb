class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  # アソシエーション
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  # ActiveHash
  belongs_to :guideline

  # 空の投稿を保存できない
  with_options presence: true do
    validates :title, length: { maximum: 30 }
    validates :memo, length: { maximum: 200 }
    validates :ingredient_1
    validates :cook_1
    validates :image
  end

  # 20文字までしか登録できない
  with_options length: { maximum: 20 } do
    validates :ingredient_1
    validates :ingredient_2
    validates :ingredient_3
    validates :ingredient_4
    validates :ingredient_5
    validates :ingredient_6
    validates :ingredient_7
    validates :ingredient_8
    validates :ingredient_9
    validates :ingredient_10
    validates :cook_1
    validates :cook_2
    validates :cook_3
    validates :cook_4
    validates :cook_5
    validates :cook_6
    validates :cook_7
    validates :cook_8
    validates :cook_9
    validates :cook_10
  end

  # 選択が「--」の時は保存できない
  validates :guideline_id, numericality: { other_than: 1 }

  # 検索機能
  def self.search(search)
    if search != ''
      Recipe.where('title LIKE(?)', "%#{search}%")
    else
      Recipe.all
    end
  end
end
