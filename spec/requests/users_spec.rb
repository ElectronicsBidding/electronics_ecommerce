require 'rails_helper'


RSpec.describe "/users", type: :request do
  include_examples('request_shared_spec', 'users', 5, [:create])

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


  it "signs in users with correct email and password" do
    user = create(:user, email: "test@gmail.com", password: "123456", password_confirmation: "123456")
    post "/users/sign_in", params: { email: "test@gmail.com", password: "123456" }
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json; charset=utf-8')
  end
  
end
