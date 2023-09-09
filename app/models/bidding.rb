class Bidding < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :user_id, :product_id, presence: true
  validates :bidding_price, presence: true
  validate :validate_bidding_price_starting_price
  validate :validate_bidding_price_current_bid 
  validate :validate_bidding_price_bid_interval

  private

  def validate_bidding_price_starting_price
    if bidding_price.present? && product.present? && bidding_price < product.starting_price
      errors.add(:bidding_price, "must be greater than or equal to the starting price")
    end
  end

  def validate_bidding_price_current_bid
    if bidding_price.present? && product.present? && bidding_price <= product.current_bid
        errors.add(:bidding_price, "must be greater than the current bid")
    end
  end

  def validate_bidding_price_bid_interval
    if bidding_price.present? && product.present?
        interval = bidding_price - product.current_bid
        if interval < product.bid_interval
          errors.add(:bidding_price, "must be greater by the specified bid interaval")
        end
    end
  end
end
