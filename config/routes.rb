Rails.application.routes.draw do
  resources :articles
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'session#create', as:'/sign_in'
  root 'articles#index'
end
