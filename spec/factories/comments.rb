FactoryGirl.define do
  factory :comment do
    association :author
    body {Faker::Lorem.sentence}
    published_at "2017-02-22"
  end
end
