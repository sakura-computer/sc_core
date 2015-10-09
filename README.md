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

## How to
## copy migration
```
bundle exec rake railties:install:migrations
```

## use gems
#### annotate
```
bundle exec annotate
```
#### haml-rails
```
bundle exec rake haml:replace_erbs
```
#### bootstrap-generators
```
bundle exec rails g bootstrap:install --template-engine=haml --stylesheet-engine=scss
```

This project rocks and uses MIT-LICENSE.

