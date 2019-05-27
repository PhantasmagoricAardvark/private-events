class EventsController < ApplicationController
  def new
  	@event = Event.new
  end

  def create
  	if logged_in?
  		@event = current_user.events.build(description: params[:event][:description], date: params[:event][:date])
  		@event.save
  		redirect_to current_user
  	else
  		flash[:danger] = "You are not logged in!"
  		redirect_to root_path
  	end

  end

  def show
  	@event = Event.find(params[:id])
  end

  def index
  	@events = Event.all
  	@past_events = Event.past_events
  end
end
