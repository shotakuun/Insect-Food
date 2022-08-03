# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do
  let(:user) { create(:user) }
  let!(:user_token_create) { user&.deliver_reset_password_instructions! }
  let(:mail) { UserMailer.reset_password_email(user) }
  let(:mail_body) do
    mail.body.encoded.split(/
/).map { |i| Base64.decode64(i) }.join
  end
  # Base64 encodeをデコードして比較できるようにする

  context 'ActionMailerの送信' do
    it 'ヘッダーが正しく表示されること' do
      expect(mail.to[0]).to eq(user.email) # 配列になっている為最初の要素を取り出す
      expect(mail.from[0]).to eq('insectfood.info@gmail.com') # 配列になっている為最初の要素を取り出す
      expect(mail.subject).to eq('パスワードリセット')
    end

    it 'メール文が正しく表示されること' do
      # メール文内にトークンを変換したURLが存在するか確認する
      expect(mail_body).to match edit_password_reset_url(user.reset_password_token)
      expect(mail_body).to match(user.name)
    end
  end
end
