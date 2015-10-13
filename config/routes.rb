ScCore::Engine.routes.draw do

  
  devise_for :users, class_name: "ScCore::User", module: :devise, controllers: {
               sessions:      'sc_core/users/sessions',
               passwords:     'sc_core/users/passwords',
               registrations: 'sc_core/users/registrations'
             }
  # logout method via get
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  
  devise_for :admin_users, class_name: "ScCore::AdminUser", module: :devise, controllers: {
               sessions:      'sc_core/admin_users/sessions',
               passwords:     'sc_core/admin_users/passwords',
               registrations: 'sc_core/admin_users/registrations'
             }
  devise_scope :admin_user do
    get '/admin_users/sign_out' => 'admin_users/sessions#destroy'
  end
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get '*path', to: 'application#render_404'
  
end
