# coding: utf-8
require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)
require "sc_core"

module Dummy
  class Application < Rails::Application
    config.generators do |g|
      g.template_engine :haml
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja
    config.i18n.available_locales = [:ja, :en]
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :utc

    # スキーマファイルの出力形式。外部キーを反映させるために:rubyではなく:sqlを指定
    # :sql db/structure.sqlを作成する。外部キーに対応する。
    # :ruby db/schema.rbを作成する。外部キーに対応しない（実行時エラーになる）。
    config.active_record.schema_format = :sql

    # bootstrap Asset Pipeline互換
    config.assets.precompile = config.assets.precompile + %w(*.png *.jpg *.jpeg *.gif *.woff *.woff2 *.ttf *.svg *.eot)
    config.assets.paths << "#{Rails.root}/vendor/assets/fonts"

    config.generators do |g|
      g.test_framework :rspec,
      fixtures: true,
      view_specs: false,
      helper_specs: false,
      routing_specs: false,
      controller_specs: true,
      request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
    
    # Validator追加
    config.autoload_paths += Dir["#{config.root}/app/validators"]

  end
end

