class Teaching < ApplicationRecord
  validates :teacher_id, uniqueness: { scope: :course_id }
  belongs_to :teacher
  belongs_to :course
end
