class Product < ApplicationRecord
    STATUS = ["available", "unavailable"].freeze


    validates :seller_id, :category_id, presence: true
    validates :name, :starting_price, :description, presence: true
    validates :image, :status, :location, :bidding_end_time, presence: true
    validates :status, inclusion: {in: STATUS}
end
