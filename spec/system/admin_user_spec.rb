# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'AdminUsers', type: :system do
  let(:general_user) { create(:user) }
  let(:user) { create(:user, :admin) }
  describe '管理者ページ' do
    context '正常系' do
      before do
        login(user)
        visit rails_admin_path
      end
      context 'ログイン済みの場合' do
        it 'admin権限があるユーザーは管理画面にができること' do
          expect(current_path).to eq(rails_admin_path)
        end

        it 'admin権限があるユーザーは他リソースを削除できること' do
          general_user
          expect(User.count).to eq 2
          expect(current_path).to eq(rails_admin_path)
          click_link 'ユーザー', match: :first
          page.all('.pjax')[20].click
          click_button '実行する'
          expect(User.count).to eq 1
        end
      end
    end

    context '失敗系' do
      context 'ログインしていない場合' do
        it '管理画面へ遷移を行うとログインページへ遷移させられること' do
          visit rails_admin_path
          expect(current_path).to eq(login_path)
          expect(page).to have_content('ログインが必要です')
        end

        it 'ログイン済みの場合でもadmin権限がないユーザーはトップ画面へ遷移させられること' do
          login(general_user)
          visit rails_admin_path
          expect(current_path).to eq(root_path)
        end
      end
    end
  end
end
