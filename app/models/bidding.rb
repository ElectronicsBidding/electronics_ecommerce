class Bidding < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :user_id, :product_id, presence: true
  validates :bidding_price, presence: true
  validate :validate_bidding_price

  private

  def validate_bidding_price
    if bidding_price.present? && product.present? && bidding_price < product.starting_price
      errors.add(:bidding_price, "must be greater than or equal to the starting price")
    end
  end
end
