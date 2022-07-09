FactoryBot.define do
  factory :contributor do
    sequence(:email) { |n| "test_contributor_#{n}@example.com" }
    password { "password" }
    sequence(:profile_name) { |n| "Test Contributor #{n}" }
    sequence(:twitter) { |n| "@#{n}twitter" }
    sequence(:instagram) { |n| "@#{n}insta" }
    sequence(:facebook) { |n| "#{n}facebook" }
    sequence(:pinterest) { |n| "#{n}pinterest" }
    sequence(:website) { |n| "#{n}.com" }
    sequence(:tiktok) { |n| "#{n}tiktok" }
    sequence(:bio) { |n| "#{n} is a professional who loves to support open source software in the tech for good movement" }
  end
end

