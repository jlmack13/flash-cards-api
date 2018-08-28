class Api::DecksController < ApplicationController
    def index
        render json: Deck.all
    end

    def show
        render json: Deck.find_by(id: params[:id])
    end

    def create
        deck = Deck.new(deck_params)
    end

    private

    def deck_params
        params.require(:deck).permit(:name, :description, :public)
    end
end 