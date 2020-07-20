class Api::V1::FlashcardsController < ApplicationController
    def show 
        flashcard = Flashcard.find(params[:id])
        render json: FlashcardSerializer.new(flashcard)
    end 

    def create 
        flashcard = Flashcard.create(flashcard_params)
        render json: FlashcardSerializer.new(flashcard)
    end 

    private 
    def flashcard_params
        params.require(:flashcard).permit(:term, :definition, :lesson_id)
    end 
end
