module ScCore
  class User < ActiveRecord::Base
    has_many :user_roles, dependent: :destroy
    has_many :roles, through: :user_roles
    accepts_nested_attributes_for :user_roles
    
    records_with_operator_on :create, :update

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    # :registerable,:recoverable,
    devise :database_authenticatable, 
           :rememberable, :trackable, :validatable
  end
end
