MyTwitter::Application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  root 'home#show'
  resource :dashboard, only: [:show]
  resources :tweets, only: [:show]
  resources :text_tweets, only: [:create]
  resources :users, only: [:show]
end
