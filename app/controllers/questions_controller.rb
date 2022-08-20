# frozen_string_literal: true

class QuestionsController < ApplicationController
  def questions; end

  def results
    @result_insect = Insect.find(params[:point])
  end
end
