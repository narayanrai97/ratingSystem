Rails.application.routes.draw do
  devise_for :users

  resources :items do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end

  root 'items#index'


end
