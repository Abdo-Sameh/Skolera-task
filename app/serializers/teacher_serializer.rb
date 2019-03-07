class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :teachings
  has_many :courses, through: :teachings
end
