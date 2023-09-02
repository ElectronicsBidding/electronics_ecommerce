require 'rails_helper'

RSpec.describe Bidding, type: :model do
  it 'has to validate factory' do
    expect(create(:bidding)).to be_valid
  end

  it {is_expected.to(validate_presence_of(:user_id))}
  it {is_expected.to(validate_presence_of(:product_id))}
  it {is_expected.to(validate_presence_of(:bidding_price))}
end