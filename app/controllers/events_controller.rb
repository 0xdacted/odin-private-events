class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = @user.events.build(event_params)
  end

  private
  def event_params
    params.require(:event).permit(:title, :location, :date)
  end
end