class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to new_contact_path, notice: 'Votre message a été envoyé avec succès!'
    else
      flash.now[:alert] = 'Veuillez corriger les erreurs dans le formulaire.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
