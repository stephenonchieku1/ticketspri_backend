class Customer < ApplicationRecord
    has_many :bookings
     validates :email,presence: true,uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_no,   
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 } 

    has_secure_password
    validates :password,
         length: { minimum: 6 },
         if:  -> { new_record? || !password.nil? }

end
