require "rails_helper"

RSpec.describe Category, type: :model do
  attributes = [
    { name: :presence },
    { image: :presence },
    { products: :have_many },
  ]

  include_examples("model_shared_spec", :category, attributes)

  # it {is_expected.to(validate_uniqueness_of(:name))}

end
