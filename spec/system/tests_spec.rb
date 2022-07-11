# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tests', type: :system do
  describe 'テストコントローラー' do
    it 'indexページへの遷移とページ内の文字が確認できること' do
      visit test_path
      expect(page).to have_content 'テスト'
    end
  end
end
