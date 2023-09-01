FactoryBot.define do
  factory :product do
    seller_id {create(:user).id}
    buyer_id {create(:user).id}
    category_id {create(:category).id}
    name {Faker::Name.name}
    starting_price {50.0}
    description {Faker::Lorem.paragraph}
    image {Faker::Avatar.image}
    status {"available"}
    location {Faker::Address.full_address}
    bidding_end_time {Faker::Date.between(from: Date.today, to: 1.week.from_now)}
  end
end
