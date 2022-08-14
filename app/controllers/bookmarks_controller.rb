# frozen_string_literal: true

class BookmarksController < ApplicationController
  def create
    insect = Insect.find(params[:insect_id])
    current_user.bookmark(insect)
    redirect_back fallback_location: root_path, success: t('controller.bookmark_insect', item: Bookmark.model_name.human)
  end

  def destroy
    insect = current_user.bookmarks.find_by(params[:id]).insect
    current_user.unbookmark(insect)
    redirect_back fallback_location: root_path, success: t('controller.um_bookmark_insect', item: Bookmark.model_name.human)
  end
end
