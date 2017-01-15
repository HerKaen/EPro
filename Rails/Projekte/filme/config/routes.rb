Rails.application.routes.draw do
root 'films#index'

  	resources :films do
    resources :likes
	end
end
