class Api::V1::EnrollmentsController < ApplicationController
    def show 
        enrollment = Enrollment.find(params[:id])
        options = {include: [:course]}
        render json: EnrollmentSerializer.new(enrollment)
    end 

    def create 
        enrollment = Enrollment.create(enrollment_params)
        render json: EnrollmentSerializer.new(enrollment)
    end

    def index 
        enrollments = Enrollment.all 
        render json: EnrollmentSerializer.new(enrollments)
    end 

    def destroy 
        enrollment = Enrollment.find(params[:id])
        enrollment.destroy 
        render json: "Course Deleted Successfully"
    end 

    private 
    def enrollment_params
        params.require(:enrollment).permit(:link, :user_id, :course_id)
    end 
end
