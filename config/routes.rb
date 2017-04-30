Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "dashboard#index"
  get "/dashboard", to: "dashboard#index", as: 'user_root'
  get "/catalog", to:"catalog#index"
  get "/catalog/:id", to: "catalog#show", as: 'show_service'
  resources :services do
    resources :orders do
      resources :reviews, only: [:new, :create]
      member do
        post "accept"
        post "cancel"
        post "complete"
        post "reject"
      end
    end
  end
  resources :profiles, only: [:show] do
	  collection do
		  get 'wizard'
		  patch "submit_wizard"
	  end
  end
  root to: "home#index"
end
