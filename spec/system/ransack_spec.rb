# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '検索結果', type: :system do
  let!(:insect) { create(:insect) }

  before do
    visit insects_path
  end
  it '虫の名前を検索した場合、正しい結果が表示されること' do
    fill_in('search_eria', with: insect.name)
    click_button '検索'
    expect(page).to have_content(insect.name)
  end

  fit 'キャッチコピーを検索した場合、正しい結果が表示されること' do
    fill_in('search_eria', with: insect.catch_copy)
    click_button '検索'
    expect(page).to have_content(insect.catch_copy)
  end

  it '名前、キャッチコピーどちらにも含まれていない場合、表示されないこと' do
    fill_in('search_eria', with: 'not-result')
    click_button '検索'
    expect(page).to have_content('食べられる虫がいません。')
  end
end
