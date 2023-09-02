require 'rails_helper'


RSpec.describe "/biddings", type: :request do
  include_examples('request_shared_spec', 'biddings', 4)

  let(:valid_attributes) do 
    {
      user_id: create(:user).id,
      product_id: create(:product).id,
      bidding_price: 100
    }
  end

  let(:invalid_attributes) do 
    {
      user_id: nil,
      product_id: create(:product).id,
      bidding_price: 100
    }
  end

  let(:new_attributes) do 
    {
      bidding_price: 200
    }
  end
  
end
