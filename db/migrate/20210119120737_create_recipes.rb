class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string  :title,          null: false #タイトル
      t.integer :guideline_id,   null: false #目安時間
      t.text    :memo,           null: false #ポイント
      t.text    :ingredient_1,   null: false #材料
      t.text    :ingredient_2
      t.text    :ingredient_3
      t.text    :ingredient_4
      t.text    :ingredient_5
      t.text    :ingredient_6
      t.text    :ingredient_7
      t.text    :ingredient_8
      t.text    :ingredient_9
      t.text    :ingredient_10
      t.text    :cook_1,         null: false #調理
      t.text    :cook_2
      t.text    :cook_3
      t.text    :cook_4
      t.text    :cook_5
      t.text    :cook_6
      t.text    :cook_7
      t.text    :cook_8
      t.text    :cook_9
      t.text    :cook_10
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
