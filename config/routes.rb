Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'guests/appearances/:id/rating', to 'appearance_rating'

  resources :guests, only: [:index, :show, :edit, :update]
  resources :episodes, only: [:index, :show]
  resources :appearances
end
