class RsvpsController < ApplicationController
 
  def create
    @rsvp = current_user.attended_events.create(attended_event_id: params[:event_id], attendee_id: params[:user_id])
    redirect_to 'events#index'
  end

end
