require 'sendgrid-ruby'
    require "pry"
class SendgridMailer < ApplicationMailer
    
#     echo "export SENDGRID_API_KEY='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'" > sendgrid.env
# echo "sendgrid.env" >> .gitignore
# source ./sendgrid.env

# binding.pry

def signupmessage(user)
    @user =user
    
    from = SendGrid::Email.new(email: 'felix.kimosop@student.moringaschool.com')
    to = SendGrid::Email.new(email: @user.email)
    subject = 'Sending with SendGrid is Fun'
    content = SendGrid::Content.new(type: 'text/plain', value: 'Thank you for joining us')
    mail = SendGrid::Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: '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')
    
    # Configure SMTP settings
    smtp_settings = {
      address: 'smtp.sendgrid.net',
      port: 587,
      user_name: 'apikey',
      password: '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',
      authentication: :plain,
      enable_starttls_auto: true
    }
    
    # Send email via SMTP
    getting = sg.client.mail._('send').post(request_body: mail.to_json, smtpapi: smtp_settings)
end








end
