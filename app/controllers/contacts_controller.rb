class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
  end

  def create
    @contact = Contact.new(params.required(:contact).permit(:company_name, :address, :tel, :user_id))
    if @contact.invalid?
      render(:new)
    else 
      @contact.save
      redirect_to(firstpage_path)
    end
  end

  def complete
  end
end
