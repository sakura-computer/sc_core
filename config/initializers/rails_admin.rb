# coding: utf-8
RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin_user
  end
  config.current_user_method(&:current_admin_user)

  ## == Cancan ==
  config.authorize_with :cancan, ScCore::Ability

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.main_app_name = ['ScCore Test App', '管理画面']
  
end

RailsAdmin::ApplicationHelper

module RailsAdmin
  module ApplicationHelper
    def logout_path
      if defined?(Devise)
        scope = Devise::Mapping.find_scope!(_current_user)
        sc_core.send("destroy_#{scope}_session_path") rescue false
      else
        sc_core.logout_path if sc_core.respond_to?(:logout_path)
      end
    end
  end
end

