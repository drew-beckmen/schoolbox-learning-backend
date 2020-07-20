class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :platform_id
end
