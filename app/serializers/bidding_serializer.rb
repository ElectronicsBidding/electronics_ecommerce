class BiddingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :bidding_price
end
