class FlashcardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :term, :definition, :lesson_id
end
