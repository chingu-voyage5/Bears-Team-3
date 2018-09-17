class UsersController < ApplicationController

  def new
    @user = User.new

    redirect_to new_user_path(@user)
  end

  def create
    if @user = User.create(user_params)
      session[:user_id] = @user.id
    else

      redirect_to :new
    end
  end

  def show
    if params[:id] == session[:user_id]
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end
