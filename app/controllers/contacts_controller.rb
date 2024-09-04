class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_email(@contact).deliver_now
      respond_to do |format|
        format.html { redirect_to new_contact_path, notice: 'Message envoyé avec succès.' }
        format.json { render json: { message: 'Message envoyé avec succès.' }, status: :created }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
