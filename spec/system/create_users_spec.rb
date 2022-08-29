# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ユーザーの作成', type: :system do
  describe 'ユーザー作成ページ' do
    before do
      visit(sign_up_path)
    end

    context '正常系' do
      it 'フォームが正しく入力すると、ユーザーが作成されること' do
        fill_in('ニックネーム', with: 'テストユーザー')
        fill_in('メールアドレス', with: 'sample@test')
        fill_in('パスワード', with: 'password')
        fill_in('パスワード確認', with: 'password')
        click_button '登録する'
        expect(current_path).to eq(root_path)
        expect(User.count).to eq 1
        expect(page).to have_content('ユーザー登録が完了しました')
      end
    end

    context '失敗系' do
      it 'フォームの値が空の場合、ユーザーが登録されないこと' do
        click_button '登録する'
        expect(current_path).to eq(sign_up_path)
        expect(User.count).to eq 0
      end
    end
  end
end
