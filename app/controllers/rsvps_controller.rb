class RsvpsController < ApplicationController

  def rsvp
    @event = Event.find(params[:id])
    @event.attendees << current_user
    current_user.attended_events << @event
    redirect_to 'events#index'
  end

  def cancel_rsvp
    @event = Event.find(params[:id]) 
    @event.attendees.delete(curent_user)
    redirect_to 'events#index'
  end
 
end
