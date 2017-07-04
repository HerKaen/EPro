Rails.application.routes.draw do
  

    root 'application#index'
	   get 'signup' => 'users#new'
     get 'overview' => 'application#overview'
     get 'diet1' => 'application#lowcarb'
     get 'diet2' => 'application#lowfat'
     get 'diet3' => 'application#trennkost'

  resources :chats
  resources :profiles
  resources :calculators   
  resources :users
  resources :bodies
  resource :session

  resources :foods do
  	resources :fooddiaries
  end

  resources :sports do
  	resources :sportdiaries
  end
end
