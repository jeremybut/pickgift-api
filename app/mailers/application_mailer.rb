# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: ENV['MAILJET_FROM']
  layout 'mailer'
end
