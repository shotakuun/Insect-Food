# frozen_string_literal: true

class QuestionsController < ApplicationController
  skip_before_action :require_login, only: %i[questions results]
  def questions; end

  def results
    @result_insect = Insect.find(1)
    @result_score = params[:point]
  end
end
