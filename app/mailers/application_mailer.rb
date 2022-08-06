# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'insectfood.info@gmail.com'
  layout 'mailer'
end
