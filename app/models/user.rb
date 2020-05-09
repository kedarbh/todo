# frozen_string_literal: true

class User < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :tasks, through: :projects, source: :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
