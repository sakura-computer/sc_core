Rails.application.routes.draw do

  mount ScCore::Engine => "/sc_core"

  root to: "home#index"
end
