class Scooter < ApplicationRecord
    has_many :scooter_bros, :dependent => :destroy
    has_many :bros, through: :scooter_bros
    validates :brand, presence: true
end
