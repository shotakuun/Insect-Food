# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'コメント機能', type: :system do
  let!(:comment) { create(:comment) }
  let!(:others_users_comment) { create(:comment) }
  let(:insect) { create(:insect) }

  describe 'ユーザーの編集' do
    context '正常系' do
      before do
        login(comment.user)
        visit insect_path(comment.insect)
      end

      it 'コメントが作成できること', js: true do
        expect(Comment.count).to eq(2)
        fill_in('js-new-comment-body', with: 'コメント2つ目！')
        click_button '登録する'
        expect(Comment.count).to eq(3)
      end

      it '自分のコメントは削除できること' do
        expect(Comment.count).to eq(2)
        find("#comment#{comment.id}").click
        expect(Comment.count).to eq(1)
      end

      it '他人のコメントは削除できないこと' do
        expect(page).not_to have_content("#comment#{others_users_comment.id}")
      end
    end

    context '失敗系' do
      describe 'ログインしていない場合' do
        it 'コメントをしようとしたタイミングでログインページへ遷移させられること' do
          visit insect_path(insect)
          fill_in('js-new-comment-body', with: 'ログインしていないよ！')
          click_button '登録する'
          expect(current_path).to eq(login_path)
        end
      end

      it 'コメントが空の場合投稿できなこと' do
        login(comment.user)
        visit insect_path(comment.insect)
        expect(Comment.count).to eq(2)
        fill_in('js-new-comment-body', with: nil)
        click_button '登録する'
        expect(Comment.count).to eq(2)
      end
    end
  end
end
