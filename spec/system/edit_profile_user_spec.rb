# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'プロフィールユーザー', type: :system do
  let(:user) { create(:user) }

  describe 'ユーザー編集' do
    before do
      login(user)
      visit(profile_path)
    end

    context '正常系' do
      it 'ユーザー名とメールアドレスが正しいユーザー情報を編集できること' do
        fill_in('ニックネーム', with: 'change_user')
        fill_in('メールアドレス', with: 'change@change.mail')
        click_button '更新する'
        expect(current_path).to eq(root_path)
        expect(page).to have_content('プロフィールを更新しました')
        expect(page).to have_content('change_user')
        expect(page).not_to have_content(user.name)
      end

      it 'アップロードした画像が正常に表示さてていること' do
        attach_file 'user[avatar]', 'spec/fixtures/images/download.png'
        expect(page).to have_no_content('donload.png')
      end
    end

    context '失敗系' do
      it '入力欄がからの場合登録できないこと' do
        fill_in('ニックネーム', with: nil)
        fill_in('メールアドレス', with: nil)
        click_button '更新する'
        expect(current_path).to eq(profile_path)
      end
    end
  end
end
