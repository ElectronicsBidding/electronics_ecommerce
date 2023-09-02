class Category < ApplicationRecord
    has_many :product

    validates :name, presence: true, uniqueness: true
    validates :image, presence: true
end
