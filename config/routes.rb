Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get 'welcome#index'

	root 'index/welcome'

	resources :products

end
