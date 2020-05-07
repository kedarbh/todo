# frozen_string_literal: true

class User < ApplicationRecord
  has_many :projects, class_name: 'project', foreign_key: 'reference_id', dependent: :destroy
  has_many :tasks, through: :projects, source: :join_association_table_foreign_key_to_tasks_table
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
