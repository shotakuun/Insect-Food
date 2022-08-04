# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '動的なページタイトル' do
    it '引数が渡されている場合動的な表示がなされること' do
      expect(full_title('test')).to eq("#{BASE_TITLE} | test")
    end

    it '引数が空白の場合ベースタイトルのみ表示されること' do
      expect(full_title('')).to eq(BASE_TITLE)
    end

    it '引数がnilの場合ベースタイトルのみ表示されること' do
      expect(full_title(nil)).to eq(BASE_TITLE)
    end
  end
end
