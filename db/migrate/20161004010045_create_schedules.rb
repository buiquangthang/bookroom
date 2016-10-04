class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :subject
      t.text :description
      t.integer :period_start
      t.integer :period_end
      t.integer :day_of_week
      t.integer :week_start
      t.integer :week_end
      t.integer :year

      t.timestamps
    end
  end
end
