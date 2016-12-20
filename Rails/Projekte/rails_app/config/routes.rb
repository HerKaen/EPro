Rails.application.routes.draw do
  resources :registrations
#  get "events" => "events#index"
#  get "events/:id" => "events#show"
	resources :events
end
