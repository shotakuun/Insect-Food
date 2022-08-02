class ThanxMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanx_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail(:subject => "登録ありがとう！！！！", to: user.email)
  end
end
