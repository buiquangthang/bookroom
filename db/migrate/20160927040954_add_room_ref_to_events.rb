class AddRoomRefToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :room, foreign_key: true
  end
end
