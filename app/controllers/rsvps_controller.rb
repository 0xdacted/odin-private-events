class RsvpsController < ApplicationController

  def rsvp
    @event = Event.find(params[:id])
    @event.attendees << current_user
    current_user.attended_events << @event
    redirect_to @event
  end

  def cancel_rsvp
    @event = Event.find(params[:id])
    @user = current_user 
    @event.attendees.delete(@user)
    redirect_to @event
  end
 
end
