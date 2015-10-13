# coding: utf-8
module ScCore
  class Ability
    include CanCan::Ability

    def initialize(user)
      user ||= User.new
      cannot :manage, :all

      if client_admin?(user)
        can :manage, :all
      end

    end

    private
    
    def client_admin?(user)
      user.roles.find_by(identifier: :client_admin).present?
    end
    
  end
end
