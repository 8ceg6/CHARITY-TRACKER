class Charity < ApplicationRecord
    has_many :donations
    has_many :donors, through: :donations
    validates :name, presence: true
    accepts_nested_attributes_for :donations, :donors
    scope :alpha, -> { order(:name) }
    


end
