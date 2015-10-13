# coding: utf-8
module ScCore
  class AdminAbility
    include CanCan::Ability

    def initialize(user)
      user ||= AdminUser.new
      cannot :manage, :all
      if root?(user)
        can :manage, :all
      end
    end

    private
    
    def root?(user)
      user.class == AdminUser ? true : false
    end
  end
end
