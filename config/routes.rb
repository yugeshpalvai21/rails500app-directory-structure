Rails.application.routes.draw do
  as :user do
    get "sign_in", to: "devise/sessions#new"
  end

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  
  # devise_scope :user do
  #   get '/login', to: 'devise/sessions#new'
  #   post '/login', to: 'devise/sessions#create'
  #   delete '/logout', to: 'devise/sessions#destroy'
  # end
  
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
 
  unauthenticated do
    root 'pages#home'
  end

  authenticated do
    root 'pages#greeting'
  end
  
  scope :admin do
    get '/hello', to: 'pages#home'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
