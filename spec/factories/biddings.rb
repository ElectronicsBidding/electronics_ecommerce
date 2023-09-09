FactoryBot.define do
  factory :bidding do
    user_id {create(:user).id}
    product_id {create(:product).id}
    bidding_price {300.0}
  end
end
