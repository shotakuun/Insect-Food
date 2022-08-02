# Preview all emails at http://localhost:3000/rails/mailers/thanx_mailer
class ThanxMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/thanx_mailer/welcome
  def welcome
    ThanxMailer.welcome
  end

end
