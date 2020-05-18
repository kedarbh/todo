# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy, counter_cache: true

  validates :name, presence: true, uniqueness: true
end
