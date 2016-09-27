class RemoveTimeStartFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :time_start, :datetime
  end
end
