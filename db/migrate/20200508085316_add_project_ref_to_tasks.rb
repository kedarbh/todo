# frozen_string_literal: true

class AddProjectRefToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :project, optional: true, foreign_key: true
  end
  add_index :tasks, :project_id
end
