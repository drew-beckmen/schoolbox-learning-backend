class Api::V1::UsersController < ApplicationController
    def show 
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def index 
        users = User.all 
        render json: UserSerializer.new(users)
    end 

    def create 
        user = User.create(user_params)
        render json: UserSerializer.new(user)
    end 

    private 
    def user_params 
        params.require(:user).permit(:name)
    end 
end
