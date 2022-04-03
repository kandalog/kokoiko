# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact
    contact = Contact.new(name: "tee", message: "お問い合わせメッセージ")
    ContactMailer.send_mail(contact, 1)
  end

end
