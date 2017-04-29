Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "dashboard#index"
<<<<<<< HEAD
  get "/catelog", to:"catelog#index"
  get "/catelog/:id", to: "catelog#show", as: 'show_service'
  resources :services
  resources :profiles, only: [:show]
=======
  resources :services do
    resources :orders
  end
  resources :profiles, only: [:show] do
	  collection do
		  get 'wizard'
		  patch "submit_wizard"
	  end
  end
>>>>>>> origin/master
  root to: "home#index"
end
