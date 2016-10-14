class SessionsController < ApplicationController
  def new
  end

  def index
    
  end

  def create 
  	user = User.find_by login: params[:login].downcase
  	if user && user.authenticate(params[:password])
  		#sign in 
  		session[:user_id] = user.id
  		#flash[:notice] = "You are sign in! "
  		redirect_to root_url
  	else
  		flash.now[:alert] = "invalid email/password."
  		render "new"
  	end
  end
  
  def destroy 
  		sign_out
  		flash[:notice] = "You are now signed out!"
  		redirect_to root_url
  end  
end
