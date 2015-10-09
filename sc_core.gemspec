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

  s.add_dependency "rails", "~> 4.2"

  # mysql
  s.add_development_dependency "mysql2", "~> 0.3.20"

  # RoR bootstraping
  s.add_dependency "sakura-toolbox", "~> 0.1"
  # for admin
  s.add_dependency "rails_admin", "~> 0.7"

end
