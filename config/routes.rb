ScCore::Engine.routes.draw do

  
  devise_for :users, class_name: "ScCore::User", module: :devise, controllers: {
               sessions:      'sc_core/users/sessions',
               passwords:     'sc_core/users/passwords',
               registrations: 'sc_core/users/registrations'
             }

  devise_for :admin_users, class_name: "ScCore::AdminUser", module: :devise, controllers: {
               sessions:      'sc_core/admin_users/sessions',
               passwords:     'sc_core/admin_users/passwords',
               registrations: 'sc_core/admin_users/registrations'
             }

  delete 'admin_users/sign_out', to: 'admin_users/sessions#destroy', as: 'logout'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :users
  resources :roles
  
  get '*path', to: 'application#render_404'
  
end
