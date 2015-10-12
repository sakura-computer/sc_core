ScCore::Engine.routes.draw do
  devise_for :users, class_name: "ScCore::User", module: :devise

  resources :users

  get '*path', to: 'application#render_404'
  
end
