class Bidding < ApplicationRecord
    validates :user_id, :product_id, presence: true
    validates :bidding_price, presence: true
end