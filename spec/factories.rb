FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    sequence(:real_name) { |n| "Person#{n}" }
    password "foobars"
    password_confirmation "foobars"
  end
end

