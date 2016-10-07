class AddRoomToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_reference :schedules, :room, foreign_key: true
    add_reference :schedules, :user, foreign_key: true
  end
end
