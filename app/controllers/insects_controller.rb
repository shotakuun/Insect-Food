# frozen_string_literal: true

class InsectsController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def index
    @insects = Insect.all
  end
end
