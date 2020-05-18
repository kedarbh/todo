class AddUserRefToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :user, null: false, foreign_key: true
  end

  add_index :tasks, :user_id
end
