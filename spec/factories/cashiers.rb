FactoryGirl.define do
  factory :cashier do
    email Faker::Internet.email
    password 123456
    password_confirmation 123456
  end
end
