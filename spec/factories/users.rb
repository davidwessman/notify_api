FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password "12345678"
    password_confirmation "12345678"

    trait :auth do
      auth_token { Devise.friendly_token }
    end
  end
end
