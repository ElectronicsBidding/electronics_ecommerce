FactoryBot.define do
  factory :user do
    full_name {Faker::Name.name}
    phone_number {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    image {nil}
    password_digest {Faker::Internet.password(min_length: 8)}
  end
end