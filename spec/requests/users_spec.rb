require 'rails_helper'


RSpec.describe "/users", type: :request do
  include_examples('request_shared_spec', 'users', 7, [:create])

  let(:valid_attributes) do 
    {
      full_name: Faker::Name.name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      image: Faker::Lorem.word,
      password_digest: "123456",
    }
  end

  let(:invalid_attributes) do 
    {
      full_name: nil,
      phone_number: Faker::PhoneNumber.phone_number,
      email: nil,
      image: Faker::Lorem.word,
      password_digest: "123456",
    }
  end

  let(:new_attributes) do 
    {
      full_name: Faker::Name.name
    }
  end
end
