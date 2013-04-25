class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
    	ContactMailer.contact_email(@contact).deliver
      redirect_to(root_path, :notice => "Tu mensaje se ha enviado correctamente.")
    else
      flash.now.alert = "Por favor llena todos los campos."
      render :new
    end
  end
end