module ScCore
  class Role < ActiveRecord::Base
    has_many :user_roles, dependent: :destroy
    has_many :users, through: :user_roles

    records_with_operator_on :create, :update
    
  end
end
