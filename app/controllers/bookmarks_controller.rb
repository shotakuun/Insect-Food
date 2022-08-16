# frozen_string_literal: true

class BookmarksController < ApplicationController
  def create
    @insect = Insect.find(params[:insect_id])
    current_user.bookmark(@insect)
  end

  def destroy
    @insect = current_user.bookmarks.find_by(params[:id]).insect
    current_user.unbookmark(@insect)
  end
end
