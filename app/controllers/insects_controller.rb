# frozen_string_literal: true

class InsectsController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def index
    @q = Insect.ransack(params[:q])
    @insects = @q.result(distinct: true)
  end

  def show
    @insect = Insect.find(params[:id])
  end
end
