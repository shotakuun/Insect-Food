# frozen_string_literal: true

class InsectsController < ApplicationController
  skip_before_action :require_login, only: %i[index show]

  def index
    @q = Insect.ransack(params[:q])
    @insects = @q.result(distinct: true)
  end

  def show
    @insect = Insect.find(params[:id])
    gon.chart_data = @insect.graphs.pluck(:data)
  end

  def bookmarks
    @q = current_user.bookmarks_insect.ransack(params[:q])
    @bookmarks_insect = @q.result(distinct: true)
  end
end
