FactoryBot.define do
  factory :watchlist do
    user_id {create(:user).id}
    product_id {create(:product).id}
  end
end
