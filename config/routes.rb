Rails.application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'


  get 'sessions/create'
  get 'sessions/destroy'
  root 'articles#index'
  resources :articles

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
