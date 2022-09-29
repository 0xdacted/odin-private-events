class RsvpsController < ApplicationController
 
  def attend
    @event = Event.find(params[:id])
    @event.attendees << current_user
    redirect_to 'events#index'
  end

end
