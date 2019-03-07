class EnrolmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes
  belongs_to :student
  belongs_to :course
end
