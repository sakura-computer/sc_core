# coding: utf-8
module ScCore
  class Ability
    include CanCan::Ability

    def initialize(user)
      user ||= User.new
      cannot :manage, :all
    end

  end
end
