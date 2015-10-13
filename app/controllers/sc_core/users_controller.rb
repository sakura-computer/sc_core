require_dependency "sc_core/application_controller"

module ScCore
  class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    # for cancancan
    load_and_authorize_resource

    def index
    end

    def new
    end

    def show
    end
    
    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

    private
    def set_user
      @user = ScCore::User
              .accessible_by(current_ability)
              .find(params([:id]))
    end

    def user_params
      params[:user].permit(:id, :email, :name, :password, :password_confirmation)
    end
                    
  end
end
