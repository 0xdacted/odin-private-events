class RsvpsController < ApplicationController
 
  def create
   current_user.attended_events.create(rsvp_params)
    redirect_to 'events#index'
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:attended_event_id, :attendee_id)
  end

end
