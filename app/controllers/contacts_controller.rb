class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render(:new)
    else 
      @contact.save
      redirect_to(root_path)
    end
  end

  def edit 
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:contact_id])
    if @contact.update(contact_params)
      redirect_to(root_path)
    else
      render(:edit)
    end
  end

  def complete
  end

  def destroy
    contact = Contact.find(params[:id])
    if contact.present?
      contact.destroy
      redirect_to(root_path)
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:company_name, :address, :tel, :user_id)
  end
end
