# frozen_string_literal: true

class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_to root_url, success: t('controller.success_login')
    else
      flash.now[:danger] = t('controller.not_login')
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, success: t('controller.logout')
  end

  def gest_login
    @guest_user = User.create(
      name: SecureRandom.alphanumeric(5),
      email: "#{SecureRandom.alphanumeric(10)}@email.com",
      password: 'password',
      password_confirmation: 'password'
    )
    auto_login(@guest_user)
    redirect_to root_url, success: t('controller.gest_login')
  end
end
