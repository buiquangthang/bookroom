class AddUserToClas < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :clas, foreign_key: true
  end
end
