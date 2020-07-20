class EnrollmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :link, :user_id, :course_id
  has_many :lessons
end
