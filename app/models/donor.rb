class Donor < ApplicationRecord
    has_many :donations 
    has_many :charities, through: :donations
    has_secure_password
    validates :email, presence: true
    validates :email, uniqueness: true

    def self.omniauth_login(auth_hash)
        self.where(:email => auth_hash["info"]["email"]).first_or_create do |donor|
            donor.password = SecureRandom.hex 
        end
    end
end
