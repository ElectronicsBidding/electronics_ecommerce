FactoryBot.define do
  factory :category do
    name {Faker::Name.name}
    image {Faker::Avatar.image}
  end
end
