Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :nodes

  root 'nodes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
