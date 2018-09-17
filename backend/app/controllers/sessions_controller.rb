class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id

      redirect_to user_path(@user)
    else
      redirect_to '/login'
    end
  end

  def delete
    session.destroy

    redirect_to root_path
  end
end
