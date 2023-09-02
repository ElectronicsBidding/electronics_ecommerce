require 'rails_helper'

RSpec.describe "/watchlists", type: :request do
  include_examples('request_shared_spec', 'watchlists', 3)

  let(:valid_attributes) do 
    {
      user_id: create(:user).id,
      product_id: create(:product).id
    }
  end

  let(:invalid_attributes) do 
    {
      user_id: nil,
      product_id: create(:product).id
    }
  end

  let(:new_attributes) do 
    {
      user_id: create(:user).id
    }
  end
end
