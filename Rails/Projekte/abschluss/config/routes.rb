Rails.application.routes.draw do
	root 'lebensmittels#index'

  resources :lebensmittels do
    resources :tagebuches
	end
end
