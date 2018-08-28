class Api::CardsController < ApplicationController
    def index
        render json: Card.all
    end

    def show
        render json: Card.find_by(id: params[:id])
    end
    
    def create
        card = Card.new(card_params)
        if card.save
            render json:
        end
    end

    private

    def card_params
        params.require(:card).permit(:term, :definition, :deck_id)
    end
end