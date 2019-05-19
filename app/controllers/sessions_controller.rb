class SessionsController < ApplicationController
  
  def new
  end

  def create
  	@user = User.find_by(id: params[:session][:id])
  	if @user
  	 	log_in(@user)
  	 	redirect_to root_path
  	end
  end

  def destroy
  	signout
  	redirect_to root_path
  end
end
