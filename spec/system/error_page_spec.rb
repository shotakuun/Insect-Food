# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'エラーページ', type: :system do
  describe 'エラーページの表示確認' do
    it '正常なURLの場合トップページへ遷移すること' do
      visit root_path
      expect(current_path).to eq(root_path)
    end

    it '404エラーの場合、エラーページへ遷移すること' do
      visit 'root_path/404'
      expect(page).to have_content '404'
      expect(page.status_code).to eq 404
    end

    it '500エラーの場合、エラーページへ遷移すること' do
      allow_any_instance_of(TopController).to receive(:index).and_throw(Exception)
      visit root_path
      expect(page).to have_content '500'
      expect(page.status_code).to eq 500
    end
  end
end
