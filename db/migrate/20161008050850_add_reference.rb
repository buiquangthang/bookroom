class AddReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :schedules, :course, foreign_key: true
    add_reference :users, :course, foreign_key: true
  end
end
