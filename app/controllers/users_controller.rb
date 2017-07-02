class UsersController < ApplicationController

  def new

  end

  def create

    @user = User.new user_params
    if @user.save!

      session[:user_id] = @user.id
      flash[:success] = "Welcome @user.full_name!"
      redirect_to root_path
    else
      flash[:error] = "Failed to register new account"
      render 'new'
    end
  end


  private
  def user_params

    params.require(:user).permit(:full_name, :password, :email)
  end

end
