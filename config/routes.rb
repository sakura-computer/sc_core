ScCore::Engine.routes.draw do
  resources :roles
  resources :roles
  resources :roles
  resources :roles
  resources :roles
  devise_for :users, class_name: "ScCore::User", module: :devise

  resources :users
  
  get '*path', to: 'application#render_404'
  
end
