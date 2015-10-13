module ScCore
  class Engine < ::Rails::Engine
    isolate_namespace ScCore

    config.generators do |g|
      g.template_engine :haml
      g.helper false
      g.stylesheets false
      g.javascripts false
    end

    # devise uses main_app application layout
    config.to_prepare do
      Devise::SessionsController.layout "application"
    end

  end
end
