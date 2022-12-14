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
    @event = current_user.hosted_events.build(event_params)
      if @event.save
        redirect_to events_path
      else
        render 'new'
      end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  private 

  def event_params
    params.require(:event).permit(:title, :body, :location, :date)
  end
end