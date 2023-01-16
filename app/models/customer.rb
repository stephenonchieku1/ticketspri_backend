class Customer < ApplicationRecord
    has_many :bookings
    validates :email, presence: true,uniqueness: true 
    #validate :phone_no, numericality: { only_integer: true, greater_than: 0 less_than: 13} 
    validates :phone,   
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }
    has_secure_password


end
