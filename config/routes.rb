Rails.application.routes.draw do
  resources :headends
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :nodes

  root to: 'nodes#index'

  get '/dashboard/', to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
