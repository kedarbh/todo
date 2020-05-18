# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :user

  validates :title, presence: true
  validates :due_date, presence: true
  validates :priority, numericality: { only_integer: true, in: 1..4 }
  validates :user, presence: true

  default_scope { order(due_date: :asc) }
end
