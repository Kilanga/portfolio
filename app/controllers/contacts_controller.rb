class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      Rails.logger.info "Contact sauvegardé avec succès : #{@contact.inspect}"
      ContactMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Votre message a été envoyé avec succès."
      redirect_to new_contact_path
    else
      flash.now[:alert] = "Il y a eu un problème lors de l'envoi de votre message."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
