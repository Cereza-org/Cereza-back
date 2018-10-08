Rails.application.routes.draw do

  get 'home/index'

   post 'user_token' => 'user_token#create'
	namespace :api do
		namespace :v1 do
	  		resources :users
	  		resources :positions
  		end
  	end

  	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
