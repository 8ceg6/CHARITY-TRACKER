class Donation < ApplicationRecord
    belongs_to :charity 
    belongs_to :donor
    accepts_nested_attributes_for :charity



end 