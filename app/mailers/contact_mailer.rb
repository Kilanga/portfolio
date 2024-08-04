class ContactMailer < ApplicationMailer
  default to: 'arnaud.lothe@gmail.com'

  def contact_email(contact)
    @contact = contact
    mail(from: @contact.email, subject: 'Nouveau message de contact')
  end
end
