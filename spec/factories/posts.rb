FactoryGirl.define do
  factory :post do
    association :author
    title {Faker::Lorem.word}
    body {Faker::Lorem.sentence}
    published_at "2017-02-22"
  end
end