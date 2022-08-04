# frozen_string_literal: true

# app/controllers/password_resets_controller.rb
class PasswordResetsController < ApplicationController
  # In Rails 5 and above, this will raise an error if
  # before_action :require_login
  # is not declared in your ApplicationController.
  skip_before_action :require_login

  def new; end

  # request password reset.
  # you get here when the user entered their email in the reset password form and submitted it.
  def create
    @user = User.find_by_email(params[:email])

    # This line sends an email to the user with instructions on how to reset their password (a url with a random token)
    @user&.deliver_reset_password_instructions!

    # Tell the user instructions have been sent whether or not email was found.
    # This is to not leak information to attackers about which emails exist in the system.
    redirect_to root_url, success: t("controller.sent_resets_password")
  end

  # This is the reset password form.
  def edit
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])
    not_authenticated if @user.blank?
  end

  # This action fires when the user has sent the reset password form.
  #
  def update
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    return not_authenticated if @user.blank?

    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.change_password(params[:user][:password])
      redirect_to root_url, success: t("controller.update_password")
    else
      flash.now[:danger] = t("controller.not_update_password")
      render action: "edit"
    end
  end
end
