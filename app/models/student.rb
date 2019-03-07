class Student < ApplicationRecord
  validates :name, presence: true
  has_many :enrolments
  has_many :courses, through: :enrolments
end
