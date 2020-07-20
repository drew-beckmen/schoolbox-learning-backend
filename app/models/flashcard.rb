class Flashcard < ApplicationRecord
    belongs_to :lesson 

    validates :term, presence: true 
    validates :definition, presence: true 
end
