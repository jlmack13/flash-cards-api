class Api::CardsController < ApplicationController
    #need a before action here for show, edit, and delete
    before_action :set_card, only: [:show, :edit, :delete]

    def index
        render json: Card.all
    end

    def show
        render json: @card
    end
    
    def create
        card = Card.new(card_params)
        if card.save
            render json: card
        else
            render json: { message: card.errors }, status: 400
        end
    end
    
    def edit
        @card.update(card_params)
    end

    def delete
        @card.destroy
    end

    private
    def set_card
        #find the card by the id here
        @card = Card.find_by(id: params[:id])
    end

    def card_params
        params.require(:card).permit(:term, :definition, :deck_id)
    end
end