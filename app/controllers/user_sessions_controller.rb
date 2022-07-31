# frozen_string_literal: true

class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_to root_url, success: "ログインしました"
    else
      flash.now[:danger] = "ログインに失敗しました"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, success: "ログアウトしました"
  end
end
