class NotifierMailer < ApplicationMailer
  def invitation_instructions(user)
    message = {
      "FromEmail": ENV['MAILJET_FROM'],
      "FromName": ENV['MAILJET_FROM_NAME'],
      "Subject": I18n.t('mailer.invitation_instructions.subject'),
      "MJ-TemplateID": '249420',
      "MJ-TemplateLanguage": true,
      "Recipients": [
        { "Email": user.email }
      ],
      "Vars": {
        "hello": t('mailer.invitation_instructions.hello', first_name: user.first_name),
        "content": t('mailer.invitation_instructions.content'),
        "button_text": t('mailer.invitation_instructions.button_text'),
        "button_link": accept_callback_v1_users_url(
          invitation_token: user.invitation_token
        )
      }
    }
    Mailjet::Send.create(message)
  end
end
