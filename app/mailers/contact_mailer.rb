class ContactMailer < ApplicationMailer

  def send_mail(contact, user)
    @contact = contact
    @user = user
    mail from: ENV['FROM_MAIL'], to: user.email, bcc: ENV["ACTION_MAILER_USER"], subject: '[ココイコ]お問い合わせ内容確認'
  end

end
