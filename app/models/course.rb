class Course < ApplicationRecord
    has_many :enrollments 
    has_many :users, through: :enrollments 
    belongs_to :platform 

    validates :title, presence: true
    validates :description, presence: true 

end
