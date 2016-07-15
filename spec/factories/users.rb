FactoryGirl.define do
  sequence(:email) { |n| "bg#{n}@pipedpiper.net" }
  factory :user do
    first_name "Bertram"
    last_name "Guilfoyle"
    email
    password "12345password"
    password_confirmation "12345password"
  end
end
