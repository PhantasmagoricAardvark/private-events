class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to show_url
  	end
  end

  def show
  	@user = User.find(params[:id])
    @upcoming_events = @user.upcoming_events
    @previous_events = @user.previous_events
  end

  def index
    @users = User.all
  end

  private

  def user_params
  	params.require(:user).permit(:name)
  end

end
