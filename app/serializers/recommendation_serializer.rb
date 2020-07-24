class RecommendationSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :link, :creator
end