require "rails_helper"

RSpec.describe Bidding, type: :model do
  attributes = [
    { user: :belong_to },
    { product: :belong_to },
    { bidding_price: :presence },
    { user_id: :presence },
    { product_id: :presence },
  ]

  include_examples("model_shared_spec", :bidding, attributes)

  it "validates bidding_price is greater than or equal to starting_price" do
    user = create(:user)
    product = create(:product)
    invalid_bidding_price = product.starting_price - 10.0
    bidding = build(:bidding, user: user, product: product, bidding_price: invalid_bidding_price)

    expect(bidding).not_to be_valid
  end
end
