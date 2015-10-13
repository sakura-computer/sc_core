module ScCore
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action only: [:create, :update] { RecordWithOperator.operator = current_user }

    def current_ability
      @current_ability ||= Ability.new(current_user)
    end

    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActionController::RoutingError, with: :render_404
    rescue_from Exception, with: :render_500
    rescue_from CanCan::AccessDenied, with: :render_404

    def render_404(exception = nil)
      if exception
        logger.info "Rendering 404 with exception: #{exception.message}"
      end
      render template: "sc_core/errors/error_404", status: 404, layout: 'application'
    end

    def render_500(exception = nil)
      if exception
        logger.info "Rendering 500 with exception: #{exception.message}"
      end
      render template: "sc_core/errors/error_500", status: 500, layout: 'application'
    end

    def after_sign_in_path_for(resource)
      case resource
      when ScCore::User
        session[:previous_url] || main_app.root_path
      when ScCore::AdminUser
        session[:previous_url] || sc_core.rails_admin_path
      end
    end

    def after_sign_out_path_for(resource)
      main_app.root_path
    end

  end
end
