class LessonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :notes, :enrollment_id

  has_many :flashcards 
end
