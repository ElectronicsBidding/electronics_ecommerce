class ProductSerializer < ActiveModel::Serializer
  attributes :id, :seller_id, :buyer_id, :category_id, :name, :starting_price, :description, :image, :status, :location, :bidding_end_time
end
