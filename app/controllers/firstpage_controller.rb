class FirstpageController < ApplicationController
  def index
    @list_users = User.all
    @list_contacts = Contact.all
  end

end
