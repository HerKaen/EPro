Rails.application.routes.draw do

	root 'application#index'

	get 'signup' => 'users#new'

	resource :session
	resources :users
  	resources :lebensmittels do
    	resources :tagebuches
	end
end
