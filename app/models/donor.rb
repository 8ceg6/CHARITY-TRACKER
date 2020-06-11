class Donor < ApplicationRecord
    has_many :donations 
    has_many :charities, through: :donations
    has_secure_password
    validates :email, uniqueness: true
end
