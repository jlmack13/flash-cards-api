class Api::CardsController < ApplicationController
    #need a before action here for show, edit, and delete
    def index
        render json: Card.all
    end

    def show
        render json: Card.find_by(id: params[:id])
    end
    
    def create
        card = Card.new(card_params)
        if card.save
            render json: card
        else
            render json: { message: card.errors }, status: 400
        end
    end

    private
    def set_card
        #find the card by the id here
    end

    def card_params
        params.require(:card).permit(:term, :definition, :deck_id)
    end
end