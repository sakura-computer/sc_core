Rails.application.routes.draw do

  get 'home/index'

  mount ScCore::Engine => "/sc_core"

  root to: "home#index"
end
