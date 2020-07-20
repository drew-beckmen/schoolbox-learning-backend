class Api::V1::LessonsController < ApplicationController
    def show 
        lesson = Lesson.find(params[:id])
        render json: LessonSerializer.new(lesson)
    end 

    def index 
        lessons = Lesson.all 
        render json: LessonSerializer.new(lessons)
    end 

    def create 
        lesson = Lesson.create(lesson_params)
        render json: LessonSerializer.new(lesson)
    end 

    private 
    def lesson_params 
        params.require(:lesson).permit(:name, :description, :notes, :enrollment_id)
    end 
end
