FactoryBot.define do
  factory :blog do
    sequence(:title) { |number| "A blog about #{number}" }
    sequence(:body) { |number| "A blog about #{number}" }
    contributor 
  end
end
