require 'rails_helper'

RSpec.describe Watchlist, type: :model do
  it 'has to validate factory' do
    expect(create(:watchlist)).to be_valid
  end

  it {is_expected.to(validate_presence_of(:user_id))}
  it {is_expected.to(validate_presence_of(:product_id))}
end
