Rails.application.routes.draw do
  root to: 'home#index'
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  get '/new', to: 'pokemons#new'

  devise_for :trainers
  resources :trainers
end
