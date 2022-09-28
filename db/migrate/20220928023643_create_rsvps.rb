class CreateRsvps < ActiveRecord::Migration[7.0]
  def change
    create_table :rsvps do |t|
      t.integer "attended_event_id"
      t.integer "attendee_id"
      t.timestamps
    end
  end
end
