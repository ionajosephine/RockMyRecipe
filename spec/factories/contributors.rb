FactoryBot.define do
  factory :contributor do
    sequence(:email) { |n| "test_contributor_#{n}@example.com"  }
    password { "password" }
    sequence(:profile_name) { |n| "Test Contributor #{n}"  }
  end
end

