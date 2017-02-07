Rails.application.routes.draw do
  
    root 'movies#index'

  	get 'signup' => 'users#new'

  	resource :session
  	resources :users
	resources :movies do
		resources :favorites
		resources :reviews
	end 
end
  