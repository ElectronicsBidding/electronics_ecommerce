require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has to validate factory' do
    expect(create(:product)).to be_valid
  end

  it {is_expected.to(validate_presence_of(:seller_id))}
  it {is_expected.to(validate_presence_of(:category_id))}
  it {is_expected.to(validate_presence_of(:name))}
  it {is_expected.to(validate_presence_of(:starting_price))}
  it {is_expected.to(validate_presence_of(:description))}
  it {is_expected.to(validate_presence_of(:image))}
  it {is_expected.to(validate_presence_of(:status))}
  it {is_expected.to(validate_inclusion_of(:status).in_array(Product::STATUS))}
  it {is_expected.to(validate_presence_of(:location))}
  it {is_expected.to(validate_presence_of(:bidding_end_time))}

  it{is_expected.to(belong_to(:category))}
  it{is_expected.to(belong_to(:seller).class_name('User').with_foreign_key('seller_id'))}
  it{is_expected.to(belong_to(:buyer).class_name('User').with_foreign_key('buyer_id'))}
end
