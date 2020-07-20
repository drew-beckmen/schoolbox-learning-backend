class Enrollment < ApplicationRecord
    belongs_to :user 
    belongs_to :course 
    has_many :lessons 
    has_many :flashcards, through: :lessons

    validates :link, presence: true 
end
