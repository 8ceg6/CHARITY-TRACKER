class Donation < ApplicationRecord
    has_many :charities
    belongs_to :charity 
    belongs_to :donor
    accepts_nested_attributes_for :charities

end 