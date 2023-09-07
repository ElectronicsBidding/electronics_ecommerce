require "rails_helper"

RSpec.describe User, type: :model do
  attributes = [
    { full_name: :presence },
    { password_digest: [:presence, { length: [[:is_at_least, 8]] }] },
    { phone_number: :presence },
    { email: :presence },
    { biddings: :have_many },
    { watchlists: :have_many },
  ]

  include_examples("model_shared_spec", :user, attributes)

  # it {is_expected.to(have_many(:products).with_foreign_key('seller_id'))}
  it { is_expected.to(have_many(:products).with_foreign_key("buyer_id")) }
end
