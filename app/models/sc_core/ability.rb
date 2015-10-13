# coding: utf-8
module ScCore
  class Ability
    include CanCan::Ability

    def initialize(user)
      user ||= User.new
      cannot :manage, :all

      if root?(user)
        can :manage, :all
      else
        if client_admin?(user)
          can :read, :user
        end
      end
    end

    private

    def root?(user)
      user.class == AdminUser ? true : false
    end
    
    def client_admin?(user)
      user.roles.find_by(identifier: :client_admin).present?
    end
    
  end
end
