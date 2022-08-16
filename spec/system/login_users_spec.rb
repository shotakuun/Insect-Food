# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ログインページ', type: :system do
  let(:user) { create(:user) }

  describe 'ユーザーのログイン' do
    before do
      visit login_path
    end

    context '正常系' do
      it 'パスワードとメールアドレスが正しい場合ログインできること' do
        fill_in('メールアドレス', with: user.email)
        fill_in('パスワード', with: 'password')
        click_button 'ログイン'
        expect(current_path).to eq(root_path)
        expect(page).to have_content('ログインしました')
        expect(page).to have_content(user.name)
      end

      it 'ログイン済みのユーザーがログインページに遷移を行うとトップページに遷移されること' do
        login(user)
        visit login_path
        expect(current_path).to eq(root_path)
        expect(page).to have_content('既にログインしています')
      end
    end

    context '失敗系' do
      it 'パスワードとメールアドレスが違う場合ログインできないこと' do
        fill_in('メールアドレス', with: user.email)
        fill_in('パスワード', with: 'wrong_password')
        click_button 'ログイン'
        expect(current_path).to eq(login_path)
        expect(page).to have_content('ログインに失敗しました')
      end

      it 'パスワードかメールアドレスが空白の場合ログイン出来ないこと' do
        fill_in('メールアドレス', with: nil)
        fill_in('パスワード', with: nil)
        click_button 'ログイン'
        expect(current_path).to eq(login_path)
      end
    end
  end
end
