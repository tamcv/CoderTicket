require 'faker'

FactoryGirl.define do
  factory :event do
    name {Faker::Name.name}
    hero_image_url {Faker::Avatar.image}
    starts_at {Faker::Date.forward(23)}
    ends_at {Faker::Date.forward(25)}
    publish false
  end
end
