Rails.application.routes.draw do
  resources :products
  resources :products, :orders, only: [:index, :show, :create, :destroy]
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get '/products/:id', to: 'products#show'
	
	root 'static_pages#index.html'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
