class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :enrolments
  has_many :courses, through: :enrolments
end
