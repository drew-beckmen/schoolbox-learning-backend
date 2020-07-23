class LessonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :notes, :enrollment_id, :created_at

  has_many :flashcards 
end
