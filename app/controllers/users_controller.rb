class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create 
  	@user = User.new(user_params)

  	if @user.save 
  		flash[:notice] = "You are now a user!"
      sign_in @user
  		redirect_to root_url
  	else 
  		render "new"
  	end
  end

  def update
  end
  private 

  def user_params 
  	params.require(:user).permit(
  		:login, :email, :password, :password_confirmation
  		)
  end 
end
