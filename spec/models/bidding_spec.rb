require 'rails_helper'

RSpec.describe Bidding, type: :model do
  it 'has to validate factory' do
    expect(create(:bidding)).to be_valid
  end

  it {is_expected.to(validate_presence_of(:user_id))}
  it {is_expected.to(validate_presence_of(:product_id))}
  it {is_expected.to(validate_presence_of(:bidding_price))}
  it {is_expected.to(belong_to(:user))}
  it {is_expected.to(belong_to(:product))}

  it 'validates bidding_price is greater than or equal to starting_price' do
    user = create(:user)
    product = create(:product)
    invalid_bidding_price = product.starting_price - 10.0
    bidding = build(:bidding, user: user, product: product, bidding_price: invalid_bidding_price)

    expect(bidding).not_to be_valid
  end
end