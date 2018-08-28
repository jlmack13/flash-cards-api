Rails.application.routes.draw do
  namespace :api do
    resources :decks
    resources :cards
  end
end
