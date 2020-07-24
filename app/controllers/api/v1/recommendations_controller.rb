class Api::V1::RecommendationsController < ApplicationController
    def index 
        recs = Recommendation.all 
        render json: RecommendationSerializer.new(recs)
    end
end 
