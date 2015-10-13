$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sc_core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sc_core"
  s.version     = ScCore::VERSION
  s.authors     = ["sakura-computer"]
  s.email       = ["ishimoto.masaru@sakura-computer.co.jp"]
  s.homepage    = "https://github.com/sakura-computer/sc_core"
  s.summary     = "This supports multi-tenancy users RoR skeleton app."
  s.description = "This supports multi-tenancy users RoR skeleton app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.required_ruby_version = "~> 2.2"
  
  s.add_dependency "rails", "~> 4.2"

  # haml
  s.add_dependency "haml_rails", "~> 0.1"
  s.add_dependency "erb2haml", "~> 0.1"

  # developing tools
  s.add_dependency "simple_form", "~> 3.1"
  s.add_dependency "annotate", "~> 2.6"
  # test
  s.add_dependency "rspec-rails", "~> 3.3"
  s.add_dependency "factory_girl_rails", "~> 4.0"
  s.add_dependency "faker", "~> 1.5"
  s.add_dependency "better_errors", "~> 2.1"
  s.add_dependency "binding_of_caller", "~> 0.7"

  # RoR bootstraping
  s.add_dependency "sakura-toolbox", "~> 0.1"
  # for admin
  s.add_dependency "rails_admin", "~> 0.7"
  s.add_dependency "rails_admin-i18n", "~> 0.0"
  
end
