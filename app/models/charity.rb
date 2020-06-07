class Charity < ApplicationRecord
    has_many :donations
    has_many :donors, through: :donations
    accepts_nested_attributes_for :donations
    accepts_nested_attributes_for :donors
end
