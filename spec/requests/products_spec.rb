require 'rails_helper'
RSpec.describe "/products", type: :request do
  include_examples('request_shared_spec', 'products', 13)

  let(:valid_attributes) do 
    {
      seller_id: create(:user).id,
      buyer_id: create(:user).id,
      category_id: create(:category).id,
      name: Faker::Name.name,
      starting_price: 50.0,
      description: Faker::Lorem.paragraph,
      image: Faker::Avatar.image,
      status: "available",
      location: Faker::Address.full_address,
      bidding_end_time: Faker::Date.between(from: Date.today, to: 1.week.from_now),
      bid_interval: 100.0,
      current_bid: 200.0
    }
  end

  let(:invalid_attributes) do 
    {
      seller_id: nil,
      buyer_id: nil,
      category_id: create(:category).id,
      name: Faker::Name.name,
      starting_price: 50.0,
      description: Faker::Lorem.paragraph,
      image: Faker::Avatar.image,
      status: "available",
      location: Faker::Address.full_address,
      bidding_end_time: Faker::Date.between(from: Date.today, to: 1.week.from_now),
      bid_interval: nil,
      current_bid: 200.0
    }
  end

  let(:new_attributes) do 
    {
      description: Faker::Lorem.paragraph
    }
  end
end
