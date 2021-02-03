require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe Recipe do
    before do
      @recipe = FactoryBot.build(:recipe)
    end

    describe 'レシピの新規登録' do
      context '登録がうまくいくとき' do
        it '全ての項目の入力が存在すれば登録できること' do
          expect(@recipe).to be_valid
        end
        it 'ingredient_2,_3,_4,_5,_6,_7,_8,_9,_10は空でも登録できること' do
          @recipe.ingredient_2 = ''
          @recipe.ingredient_3 = ''
          @recipe.ingredient_4 = ''
          @recipe.ingredient_5 = ''
          @recipe.ingredient_6 = ''
          @recipe.ingredient_7 = ''
          @recipe.ingredient_8 = ''
          @recipe.ingredient_9 = ''
          @recipe.ingredient_10 = ''
          expect(@recipe).to be_valid
        end
        it 'ingredient_1,_2,_3,_4,_5,_6,_7,_8,_9,_10は20文字以内で登録できること' do
          @recipe.ingredient_1 = 'あ' * 20
          @recipe.ingredient_2 = 'あ' * 20
          @recipe.ingredient_3 = 'あ' * 20
          @recipe.ingredient_4 = 'あ' * 20
          @recipe.ingredient_5 = 'あ' * 20
          @recipe.ingredient_6 = 'あ' * 20
          @recipe.ingredient_7 = 'あ' * 20
          @recipe.ingredient_8 = 'あ' * 20
          @recipe.ingredient_9 = 'あ' * 20
          @recipe.ingredient_10 = 'あ' * 20
          expect(@recipe).to be_valid
        end
        it 'cook_2,_3,_4,_5,_6,_7,_8,_9,_10は空でも登録できること' do
          @recipe.cook_2 = ''
          @recipe.cook_3 = ''
          @recipe.cook_4 = ''
          @recipe.cook_5 = ''
          @recipe.cook_6 = ''
          @recipe.cook_7 = ''
          @recipe.cook_8 = ''
          @recipe.cook_9 = ''
          @recipe.cook_10 = ''
          expect(@recipe).to be_valid
        end
        it 'cook_1,_2,_3,_4,_5,_6,_7,_8,_9,_10は20文字以内で登録できること' do
          @recipe.cook_1 = 'あ' * 20
          @recipe.cook_2 = 'あ' * 20
          @recipe.cook_3 = 'あ' * 20
          @recipe.cook_4 = 'あ' * 20
          @recipe.cook_5 = 'あ' * 20
          @recipe.cook_6 = 'あ' * 20
          @recipe.cook_7 = 'あ' * 20
          @recipe.cook_8 = 'あ' * 20
          @recipe.cook_9 = 'あ' * 20
          @recipe.cook_10 = 'あ' * 20
          expect(@recipe).to be_valid
        end
      end

      context '登録がうまくいかないとき' do
        it 'title が空では登録できないこと' do
          @recipe.title = ''
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('レシピのタイトルを入力してください')
        end
        it 'title が31文字以上では登録できないこと' do
          @recipe.title = 'あ' * 31
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('レシピのタイトルは30文字以内で入力してください')
        end
        it 'ingredient_1が空では登録できないこと' do
          @recipe.ingredient_1 = ''
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料1.を入力してください')
        end
        it 'ingredient_1が21文字以上では登録できないこと' do
          @recipe.ingredient_1 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料1.は20文字以内で入力してください')
        end
        it 'ingredient_2が21文字以上では登録できないこと' do
          @recipe.ingredient_2 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料2.は20文字以内で入力してください')
        end
        it 'ingredient_3が21文字以上では登録できないこと' do
          @recipe.ingredient_3 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料3.は20文字以内で入力してください')
        end
        it 'ingredient_4が21文字以上では登録できないこと' do
          @recipe.ingredient_4 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料4.は20文字以内で入力してください')
        end
        it 'ingredient_5が21文字以上では登録できないこと' do
          @recipe.ingredient_5 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料5.は20文字以内で入力してください')
        end
        it 'ingredient_6が21文字以上では登録できないこと' do
          @recipe.ingredient_6 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料6.は20文字以内で入力してください')
        end
        it 'ingredient_7が21文字以上では登録できないこと' do
          @recipe.ingredient_7 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料7.は20文字以内で入力してください')
        end
        it 'ingredient_8が21文字以上では登録できないこと' do
          @recipe.ingredient_8 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料8.は20文字以内で入力してください')
        end
        it 'ingredient_9が21文字以上では登録できないこと' do
          @recipe.ingredient_9 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料9.は20文字以内で入力してください')
        end
        it 'ingredient_10が21文字以上では登録できないこと' do
          @recipe.ingredient_10 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('材料10.は20文字以内で入力してください')
        end
        it 'memo が空では登録できないこと' do
          @recipe.memo = ''
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('レシピのポイントを入力してください')
        end
        it 'memo が201文字以上では登録できないこと' do
          @recipe.memo = 'あ' * 201
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('レシピのポイントは200文字以内で入力してください')
        end
        it 'cook_1が空では登録できないこと' do
          @recipe.cook_1 = nil
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方1.を入力してください')
        end
        it 'cook_1が21文字以上では登録できないこと' do
          @recipe.cook_1 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方1.は20文字以内で入力してください')
        end
        it 'cook_2が21文字以上では登録できないこと' do
          @recipe.cook_2 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方2.は20文字以内で入力してください')
        end
        it 'cook_3が21文字以上では登録できないこと' do
          @recipe.cook_3 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方3.は20文字以内で入力してください')
        end
        it 'cook_4が21文字以上では登録できないこと' do
          @recipe.cook_4 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方4.は20文字以内で入力してください')
        end
        it 'cook_5が21文字以上では登録できないこと' do
          @recipe.cook_5 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方5.は20文字以内で入力してください')
        end
        it 'cook_6が21文字以上では登録できないこと' do
          @recipe.cook_6 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方6.は20文字以内で入力してください')
        end
        it 'cook_7が21文字以上では登録できないこと' do
          @recipe.cook_7 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方7.は20文字以内で入力してください')
        end
        it 'cook_8が21文字以上では登録できないこと' do
          @recipe.cook_8 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方8.は20文字以内で入力してください')
        end
        it 'cook_9が21文字以上では登録できないこと' do
          @recipe.cook_9 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方9.は20文字以内で入力してください')
        end
        it 'cook_10が21文字以上では登録できないこと' do
          @recipe.cook_10 = 'あ' * 21
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('作り方10.は20文字以内で入力してください')
        end
        it 'imageが空では登録できないこと' do
          @recipe.image = nil
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('画像を入力してください')
        end
        it 'guideline_id が「1」だと登録できないこと' do
          @recipe.guideline_id = 1
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('目安時間は1以外の値にしてください')
        end
        it 'userが紐付いていないと登録できないこと' do
          @recipe.user = nil
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include('Userを入力してください')
        end
      end
    end
  end
end
