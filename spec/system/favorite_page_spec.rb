# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'お気に入りページ', type: :system do
  let(:insect) { create(:insect) }
  let(:user) { create(:user) }

  describe 'お気に入りページの表示確認' do
    context 'お気に入りしている場合' do
      it '表示されること' do
        user.bookmark(insect)
        login(user)
        visit bookmarks_insects_path
        expect(page).to have_content insect.name
        expect(page).to have_content insect.catch_copy
      end
    end

    context 'お気に入りしているいない場合' do
      it '表示されないこと' do
        login(user)
        visit bookmarks_insects_path
        expect(page).not_to have_content insect.name
        expect(page).not_to have_content insect.catch_copy
        expect(page).to have_content 'お気に入りした虫がいません'
      end
    end
  end
end
