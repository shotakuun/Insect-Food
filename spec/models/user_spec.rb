# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  crypted_password :string(255)
#  email            :string(255)      not null
#  name             :string(255)      not null
#  salt             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
require "rails_helper"

RSpec.describe User, type: :model do
  let(:create_user) { create(:user) }
  let(:user) { build(:user) }

  describe "Userモデルのバリデーションテスト" do
    it "userが作成出来ること" do
      expect(user).to be_valid
    end

    describe "emailカラム" do
      it "メールが空の場合無効であること" do
        user = build(:user, email: nil)
        expect(user.valid?).to be false
        expect(user.errors[:email]).to include("を入力してください")
      end

      it "メールが既に登録されていたら無効であること" do
        user = build(:user, email: create_user.email)
        expect(user.valid?).to be false
        expect(user.errors[:email]).to include("はすでに存在します")
      end

      it "メールが255文字以上の場合無効であること" do
        user = build(:user, email: "a" * 256)
        expect(user.valid?).to be false
        expect(user.errors[:email]).to include("は255文字以内で入力してください")
      end
    end

    describe "nameカラム" do
      it "ニックネームが空の場合無効であること" do
        user = build(:user, name: nil)
        expect(user.valid?).to be false
        expect(user.errors[:name]).to include("を入力してください")
      end

      it "ニックネームが既に登録されていたら無効であること" do
        user = build(:user, name: create_user.name)
        expect(user.valid?).to be false
        expect(user.errors[:name]).to include("はすでに存在します")
      end

      it "ニックネームが3文字以内の場合無効であること" do
        user = build(:user, name: "a" * 2)
        expect(user.valid?).to be false
        expect(user.errors[:name]).to include("は3文字以上で入力してください")
      end

      it "ニックネームが255文字以上の場合無効であること" do
        user = build(:user, name: "a" * 256)
        expect(user.valid?).to be false
        expect(user.errors[:name]).to include("は255文字以内で入力してください")
      end
    end

    describe "パスワードカラム" do
      it "パスワードが空の場合無効であること" do
        user = build(:user, password: nil)
        expect(user.valid?).to be false
        expect(user.errors[:password]).to include("を入力してください")
      end

      it "パスワード確認が空の場合無効であること" do
        user = build(:user, password_confirmation: nil)
        expect(user.valid?).to be false
        expect(user.errors[:password_confirmation]).to include("を入力してください")
      end

      it "パスワードが3文字以内の場合無効であること" do
        user = build(:user, password: "a" * 4)
        expect(user.valid?).to be false
        expect(user.errors[:password]).to include("は5文字以上で入力してください")
      end

      it "パスワードとパスワード確認が一致しない場合無効であること" do
        user = build(:user, password: "a" * 6, password_confirmation: "a" * 7)
        expect(user.valid?).to be false
        expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
    end
  end
end
