class Product < ApplicationRecord
    STATUS = ["available", "unavailable"].freeze

    belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'
    belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'
    belongs_to :category

    has_many :bidding
    has_many :watchlist

    validates :seller_id, :category_id, presence: true
    validates :name, :starting_price, :description, presence: true
    validates :image, :status, :location, :bidding_end_time, presence: true
    validates :status, inclusion: {in: STATUS}
end
