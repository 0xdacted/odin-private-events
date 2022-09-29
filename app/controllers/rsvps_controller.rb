class RsvpsController < ApplicationController

  def rsvp
    @event = Event.find(params[:id])
    @event.attendees << current_user
    current_user.attended_events << @event
  end
 
end
