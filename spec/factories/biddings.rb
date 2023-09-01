FactoryBot.define do
  factory :bidding do
    user_id {create(:user).id}
    product_id {create(:product).id}
    bidding_price {100.0}
  end
end
