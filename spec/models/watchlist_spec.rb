require "rails_helper"

RSpec.describe Watchlist, type: :model do
  attributes = [
    { user_id: :presence },
    { product_id: :presence },
    { user: :belong_to },
    { product: :belong_to },

  ]

  include_examples("model_shared_spec", :watchlist, attributes)
end
