require "rails_helper"

RSpec.describe Product, type: :model do
  attributes = [
    { name: :presence },
    { starting_price: [:presence, { numericality: [[:is_greater_than, 0]] }] },
    { description: :presence },
    { image: :presence },
    { status: :presence },
    { location: :presence },
    { bidding_end_time: :presence },
    { category_id: :presence },
    { seller_id: :presence },
    { biddings: :have_many },
    { watchlists: :have_many },
    { category: :belong_to },
    { status: [:presence, { inclusion: [[:in_array, Product::STATUS]] }] },
    { bid_interval: :presence }
  ]

  include_examples("model_shared_spec", :product, attributes)

  it { is_expected.to(belong_to(:seller).class_name("User").with_foreign_key("seller_id")) }
  it { is_expected.to(belong_to(:buyer).class_name("User").with_foreign_key("buyer_id")) }
end
