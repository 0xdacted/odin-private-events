class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :rsvps, foreign_key: :attended_event_id
  has_many :attendees, through: :rsvps

  scope :upcoming, -> { where("date > ?", DateTime.now) }

  scope :past, -> { where("date < ?", DateTime.now) }

end
