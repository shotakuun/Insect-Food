require "rails_helper"

RSpec.describe ThanxMailer, type: :mailer do
  let(:user) { build(:user) }

  before do
    ActionMailer::Base.deliveries.clear #送られたテストが配列になって保存されているのでそれらをクリアする
    ThanxMailer.with(name: user.name, to: user.email).welcome(user).deliver_now #メールを送る処理
  end

  describe "ActionMailerの送信'" do
    describe "ユーザー登録時のメール確認"

    it "指定したアドレスからメールが送信されていること" do
      expect(ActionMailer::Base.deliveries.last.from.first).to eq("insectfood.info@gmail.com")
    end

    it "指定した送信先のアドレスであること" do
      expect(ActionMailer::Base.deliveries.last.to.first).to eq(user.email)
    end

    it "正常にメールが送信されていること" do
      expect(ActionMailer::Base.deliveries.last.subject).to eq("ご登録ありがとうございます")
    end
  end
end
