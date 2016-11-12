Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :landingpages

  namespace :account do
    resources :letters
    resources :heartbeats
  end

  root 'landingpages#index'

end
