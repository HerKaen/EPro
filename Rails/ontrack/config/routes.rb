Rails.application.routes.draw do
	root "projects#index"
	resource :session
  resources :users
  
  resources :projects do 
  	resources :tasks
  end
end
