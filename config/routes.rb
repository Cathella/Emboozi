Rails.application.routes.draw do
  resources :stories do
    resources :comments, module: :stories
  end
  
  devise_for :users
  get 'home/index'
  root to: 'home#index'
end
