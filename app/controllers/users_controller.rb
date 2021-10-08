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
      redirect_to(root_path)
    end
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    if @user.update(params.required(:user).permit(:first_name, :last_name))
        redirect_to(root_path)
    else
        render(:edit)
    end
  end

end
