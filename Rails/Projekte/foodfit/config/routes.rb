Rails.application.routes.draw do
  
  resources :profiles
  resources :calculators
    root 'application#index'
	   get 'signup' => 'users#new'
     get 'diet1' => 'application#index2'
     get 'diet2' => 'application#index3'
     get 'diet3' => 'application#index4'

  resources :users
  resources :bodies

  resources :successes
  resource :session

  resources :foods do
  	resources :fooddiaries
  end

  resources :sports do
  	resources :sportdiaries
  end
end
