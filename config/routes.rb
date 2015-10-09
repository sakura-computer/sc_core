ScCore::Engine.routes.draw do
  devise_for :users, class_name: "ScCore::User", module: :devise
end
