MyTwitter::Application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  root 'home#show'
  resource :dashboard, only: [:show]
  resources :tweets, only: [:create, :show]
  resources :users, only: [:show]
end
