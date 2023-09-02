require 'rails_helper'
RSpec.describe "/categories", type: :request do
  include_examples('request_shared_spec', 'categories', 3)

  let(:valid_attributes) do 
    {
      name: Faker::Name.name,
      image: Faker::Lorem.word,
    }
  end

  let(:invalid_attributes) do 
    {
      name: nil,
      image: nil
    }
  end

  let(:new_attributes) do 
    {
      name: Faker::Name.name
    }
  end

  
  
end
