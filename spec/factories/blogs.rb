FactoryBot.define do
  factory :blog do
    sequence(:title) { |number| "Blog Title #{number}" }
    contributor 
  end
end
