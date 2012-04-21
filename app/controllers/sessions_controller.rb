class SessionsController < ApplicationController
  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out."
  end

  def create
    user = User.authenticate(params[:email],params[:password])
    if user
      session[:user_id] = user.id
      redirect_to exercises_path, notice: "Time to get smarter #{user.name}"
    else
      Flash.now[:error] = "Invalid email or password"
      render 'new'
    end
  end
end
