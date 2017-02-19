Rails.application.routes.draw do

	root 'sports#index'
  
  resources :foods do
  	resources :fooddiaries
  end

  resources :sports do
  	resources :sportdiaries
  end
end
