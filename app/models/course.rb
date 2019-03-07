class Course < ApplicationRecord
  validates :name, presence: true
  has_many :enrolments
  has_many :students, through: :enrolments

  has_many :teachings
  has_many :teachers, through: :teachings

end
