class User < ApplicationRecord
    has_many :enrollments 
    has_many :courses, through: :enrollments
    has_many :platforms, through: :courses 
    has_many :lessons, through: :enrollments
    has_many :flashcards, through: :enrollments

    validates :name, presence: true 
    validates_associated :enrollments 
end
