Rails.application.routes.draw do
  resources :products
  resources :products, :orders, only: [:index, :show, :create, :destroy]

  
get '/about', :to => 'static_pages#about'
get '/contact', :to => 'static_pages#contact'
get '/index', :to => 'static_pages#index'
get '/landing_page', :to => 'static_pages#landing_page'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  get '/products/:id', to: 'products#show'
	
	 root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
