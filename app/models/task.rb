# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :project, class_name: 'project', foreign_key: 'project_id'
  validates :title, presence: true
  validates :due_date, presence: true
  validates :priority, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 4 }
end
