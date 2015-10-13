# ScCore
This gem supplys multi-tenancy RoR application skeleton.

## Installation

Add sc_core to your application's Gemfile
```
gem 'sc_core'
```

Install it as
```
bundle install
```

## Usage
And then, Config database.yml.
```
bundle exec rake db:create
```

### Execute gems generators
#### activerecord-session_sotre
```
bundle exec rails g active_record:session_migration
```
Add config/initializers/session_sotre.rb as
```
Rails.application.config.session_store :active_record_store, key: '_YOUR_APP_session'
```
#### haml_rails
```
bundle exec rails g haml_rails:install
```

## How to
## copy migration
```
bundle exec rake railties:install:migrations
```
## js
Add app/assets/application.js as
```
//= require sc_core/sc_core
```
## css
Add app/assets/application.scss
```
*= require sc_core/sc_core
```
## use gems
#### annotate
```
bundle exec annotate
```
#### bootstrap-generators
```
bundle exec rails g bootstrap:install --template-engine=haml --stylesheet-engine=scss
```

## mount
Add config/routes as
```
mount ScCore::Engine => "/", as: "sc_core"
```
This project rocks and uses MIT-LICENSE.

