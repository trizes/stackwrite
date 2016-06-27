FactoryGirl.define do
  factory :post do
    body { Faker::Hipster.sentence(3, false, 4) }
    author
  end
end