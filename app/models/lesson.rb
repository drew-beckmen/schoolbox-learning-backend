class Lesson < ApplicationRecord
    belongs_to :enrollment 
    has_many :flashcards 

    validates :name, presence: true
    validates :description, presence: true 
end
