Rails.application.routes.draw do
  devise_for :users
  resources :stories do
    resources :comments, module: :stories
  end
  
  root to: 'home#index'
end
