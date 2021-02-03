require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録がうまくいくとき' do
        it '全ての項目の入力が存在すれば登録できること' do
          expect(@user).to be_valid
        end
        it 'passwordが6文字以上であれば登録できること' do
          @user.password = '2jhdw3'
          @user.password_confirmation = '2jhdw3'
          expect(@user).to be_valid
        end
      end
    end
    context '新規登録がうまくいかないとき' do
      it 'emailが空では登録できないこと' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールを入力してください')
      end
      it 'emailに＠がないと登録できないこと' do
        @user.email = 'gdrgd.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it '重複したemailが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'passwordが空では登録できないこと' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードを入力してください')
      end
      it 'passwordが5文字以下では登録できないこと' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordが全角では登録できないこと' do
        @user.password = 'gwg３rdj'
        @user.password_confirmation = 'gwg３rdj'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordが数字のみでは登録できないこと' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordが英語のみでは登録できないこと' do
        @user.password = 'dfhncd'
        @user.password_confirmation = 'dfhncd'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できないこと' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end
      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end
      it 'nicknameが空では登録できないこと' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームを入力してください')
      end
      it 'lastnameが空だと登録できないこと' do
        @user.lastname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)を入力してください')
      end
      it 'lastnameが[漢字]では登録できないこと' do
        @user.lastname = '山田'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)は不正な値です')
      end
      it 'lastnameが[ひらがな]では登録できないこと' do
        @user.lastname = 'やまだ'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)は不正な値です')
      end
      it 'lastnameが[カタカナ]では登録できないこと' do
        @user.lastname = 'カタカナ'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)は不正な値です')
      end
      it 'lastnameが[数字の混合]では登録できないこと' do
        @user.lastname = 'dksfi3js9'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)は不正な値です')
      end
      it 'lastnameが[半角数字]では登録できないこと' do
        @user.lastname = '389281'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)は不正な値です')
      end
      it 'lastnameが[半角カナ文字]では登録できないこと' do
        @user.lastname = 'ﾔﾏﾀﾞ'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字(ローマ字)は不正な値です')
      end
      it 'firstnameが空だと登録できないこと' do
        @user.firstname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)を入力してください')
      end
      it 'firstnameが[漢字]では登録できないこと' do
        @user.firstname = '太郎'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)は不正な値です')
      end
      it 'firstnameが[ひらがな]では登録できないこと' do
        @user.firstname = 'たろう'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)は不正な値です')
      end
      it 'firstnameが[カタカナ]では登録できないこと' do
        @user.firstname = 'カタカナ'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)は不正な値です')
      end
      it 'firstnameが[数字の混合]では登録できないこと' do
        @user.firstname = 'dksfi3js9'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)は不正な値です')
      end
      it 'firstnameが[半角数字]では登録できないこと' do
        @user.firstname = '389281'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)は不正な値です')
      end
      it 'firstnameが[半角カナ文字]では登録できないこと' do
        @user.firstname = 'ﾀﾛｳ'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前(ローマ字)は不正な値です')
      end
    end
  end
end
