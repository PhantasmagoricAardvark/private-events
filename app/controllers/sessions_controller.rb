class SessionsController < ApplicationController
  def new
  end

  def create
  	@user.find_by(id: params[:id])
  	if @user.find_by(id: params[:id])
  	 	log_in(@user)
  	end
  end
end
