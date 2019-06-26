Rails.application.routes.draw do

  resource :sessions, only: %i(create new destroy)
  resource :users, only: %i(create new)

  resources :products do
  	resources :reviews
  end

	root :to => 'products#index'
end
