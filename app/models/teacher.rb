class Teacher < ApplicationRecord
  validates :name, presence: true
  has_many :teachings
  has_many :courses, through: :teachings
end
