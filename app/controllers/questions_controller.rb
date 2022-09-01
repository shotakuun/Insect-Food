# frozen_string_literal: true

class QuestionsController < ApplicationController
  skip_before_action :require_login, only: %i[questions results]

  def questions; end

  def results
    @result = InsectRank.find_by(score: params[:point])
    set_num = rand(1..@result.insects.length)
    @result_insect = @result.insects[set_num - 1]
    @result_score = params[:point]
  end
end
