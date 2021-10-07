class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.required(:user).permit(:first_name, :last_name))
    if @user.invalid?
      render(:new)
    else 
      @user.save
      redirect_to(firstpage_path)
    end
  end
end
