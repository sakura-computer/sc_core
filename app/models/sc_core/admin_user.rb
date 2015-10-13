module ScCore
  class AdminUser < ActiveRecord::Base
    records_with_operator_on :create, :update
    
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, 
           :rememberable, :trackable, :validatable
    
  end
end
