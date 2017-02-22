FactoryGirl.define do
  factory :comment do
    body "MyString"
    author_id nil
    published_at "2017-02-22"
  end
end
