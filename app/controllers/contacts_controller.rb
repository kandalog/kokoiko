class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact, current_user).deliver
      redirect_to root_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :new
    end
  end
  
  
  private
  
    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :message)
    end

end
