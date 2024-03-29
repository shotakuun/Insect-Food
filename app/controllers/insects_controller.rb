# frozen_string_literal: true

class InsectsController < ApplicationController
  skip_before_action :require_login, only: %i[index show]

  def index
    @q = Insect.ransack(params[:q])
    @insects = @q.result(distinct: true).page(params[:page]).per(6)
  end

  def show
    @insect = Insect.find(params[:id])
    gon.chart_data = @insect.graphs.pluck(:data)
    @comments = @insect.comments.includes(:user).order(created_at: :desc)
  end

  def bookmarks
    @q = current_user.bookmarks_insect.ransack(params[:q])
    @bookmarks_insect = @q.result(distinct: true).page(params[:page]).per(6)
  end
end
