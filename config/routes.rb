Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		resources :artists
			post '/login', to: 'auth#create'
			get '/profile', to: 'artists#profile'
			resources :works
			resources :comments
  	end
  end
end
