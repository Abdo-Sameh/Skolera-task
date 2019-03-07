class TeachingSerializer
  include FastJsonapi::ObjectSerializer
  attributes
  belongs_to :teacher
  belongs_to :course
end
