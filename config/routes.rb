Rails.application.routes.draw do
  resources :tutorials
  resources :landing, only: [:index, :show]
  devise_for :users



  root 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
