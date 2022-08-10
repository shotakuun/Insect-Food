# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login

  protected

  def not_authenticated
    flash[:danger] = t('controller.need_login')
    redirect_to main_app.login_path # main_appのプレフィックスをつける
  end
end
