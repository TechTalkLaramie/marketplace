Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "dashboard#index"
  get "/catelog", to:"catelog#index"
  get "/catelog/:id", to: "catelog#show", as: 'show_service'
  resources :services
  resources :profiles, only: [:show]
  root to: "home#index"
end
