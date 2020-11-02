FactoryBot.define do
  factory :my_problem do
    question {Faker::Lorem.sentence}
    answer {Faker::Lorem.sentence}
    image {Faker::Lorem.sentence}
    association :user
  end
end
