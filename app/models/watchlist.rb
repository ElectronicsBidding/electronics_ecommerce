class Watchlist < ApplicationRecord
    validates :user_id, :product_id, presence: true
end
