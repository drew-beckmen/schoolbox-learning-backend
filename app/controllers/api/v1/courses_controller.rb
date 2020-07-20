class Api::V1::CoursesController < ApplicationController
    def show 
        course = Course.find(params[:id])
        render json: CourseSerializer.new(course)
    end 

    def index 
        courses = Course.all 
        render json: CourseSerializer.new(courses)
    end 

    def create 
        course = Course.create(course_params)
        render json: CourseSerializer.new(course)
    end 

    private 
    def course_params
        params.require(:course).permit(:title, :description, :platform_id)
    end 
end
