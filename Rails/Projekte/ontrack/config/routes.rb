Rails.application.routes.draw do
    resources :projects do
  	resources :iterations
	end 
end
