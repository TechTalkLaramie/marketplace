Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "dashboard#index"
  resources :services do
    resources :orders
  end
  resources :profiles, only: [:show] do
	  collection do
		  get 'wizard'
		  patch "submit_wizard"
	  end
  end
  root to: "home#index"
end
