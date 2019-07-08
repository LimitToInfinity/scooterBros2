class Bro < ApplicationRecord
    has_many :scooter_bros, :dependent => :destroy
    has_many :scooters, through: :scooter_bros

    validates :name, presence: true, uniqueness: true
    accepts_nested_attributes_for :scooters
end
