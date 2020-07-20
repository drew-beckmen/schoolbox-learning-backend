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

    private 
    def enrollment_params
        params.require(:enrollment).permit(:link, :user_id, :course_id)
    end 
end
