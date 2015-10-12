module ScCore
  class Engine < ::Rails::Engine
    isolate_namespace ScCore

    config.generators do |g|
      g.template_engine :haml
      g.helper false
      g.stylesheets false
      g.javascripts false
    end
  end
end
