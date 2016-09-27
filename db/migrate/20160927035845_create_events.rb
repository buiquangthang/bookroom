class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.timestamp :time_start
      t.integer :period

      t.timestamps
    end
  end
end
