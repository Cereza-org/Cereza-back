Rails.application.routes.draw do

  resources :users
  post 'user_token' => 'user_token#create'
	namespace :api do
		namespace :v1 do
	  		resources :users
	  		resources :positions
  		end
  	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
