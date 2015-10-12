module ScCore
  class UserRole < ActiveRecord::Base
    belongs_to :user
    belongs_to :role

    records_with_operator_on :create, :update
    
  end
end
