FactoryGirl.define do
  factory :author do
    provider Faker::Hipster.word
    uid      Faker::Number.number(10)
    name     Faker::Name.name
    image    Faker::Avatar.image

    factory :author_with_posts do
      transient do
        posts_count 5
      end

      after(:create) do |author, evaluator|
        create_list(:post, evaluator.posts_count, author: author)
      end
    end
  end
end
