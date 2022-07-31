# frozen_string_literal: true

class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_to root_url, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, success: 'ログアウトしました'
  end

  def gest_login
    @guest_user = User.create(
      name: SecureRandom.alphanumeric(5),
      email: "#{SecureRandom.alphanumeric(10)}@email.com",
      password: 'password',
      password_confirmation: 'password'
    )
    auto_login(@guest_user)
    redirect_to root_path, success: 'ゲストとしてログインしました'
  end
end
