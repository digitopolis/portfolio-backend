Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		resources :artists
			post '/login', to: 'auth#create'
			get '/profile', to: 'artist#profile'
			resources :works
  	end
  end
end
