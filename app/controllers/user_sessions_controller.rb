class UserSessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		flash[:notice] = "Thanks for logging in!"
  		redirect_to users_path
  	else
  		flash[:error] = "There was a problem logging in. Please check your email and password."
  		render action: 'new'
  	end

  end

  def destroy
    session[:user_id] = nil
    reset_session
    redirect_to root_path, notice: "You have been logged out."
  end

end
