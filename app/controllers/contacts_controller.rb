class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
  end

  def create
    if @contact.invalid?
      render(:new)
    else 
      @contact.save
      redirect_to(root_path)
    end
  end

  def complete
  end
end
