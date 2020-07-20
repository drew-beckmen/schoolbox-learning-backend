class Api::V1::PlatformsController < ApplicationController
    def index 
        platforms = Platform.all 
        render json: PlatformSerializer.new(platforms)
    end 

    def show 
        platform = Platform.find(params[:id])
        render json: PlatformSerializer.new(platform)
    end 

    def create 
        platform = Platform.create(platform_params)
        render json: PlatformSerializer.new(platform)
    end 

    private 
    def platform_params
        params.require(:platform).permit(:name)
    end 
end
