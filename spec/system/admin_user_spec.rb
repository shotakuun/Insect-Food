# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '管理者権限', type: :system do
  let(:general_user) { create(:user) }
  let(:user) { create(:user, :admin) }
  describe '管理者ページの表示確認' do
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
          page.all('.pjax')[25].click
          click_button '実行する'
          expect(User.count).to eq 1
        end
      end
    end

    context '失敗系' do
      context 'ログインしていない場合' do
        it '管理画面へ遷移を行うと404エラーページへ遷移される事' do
          visit rails_admin_path
          expect(page).to have_content '404'
          expect(page.status_code).to eq 404
        end

        it 'ログイン済みの場合でもadmin権限がないユーザーは404エラーページへ繊維される事' do
          login(general_user)
          visit rails_admin_path
          expect(page).to have_content '404'
          expect(page.status_code).to eq 404
        end
      end
    end
  end
end
