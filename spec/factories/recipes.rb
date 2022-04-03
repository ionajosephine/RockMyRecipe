FactoryBot.define do
  factory :recipe do
    sequence(:title) { |number| "Recipe #{number}" }
    contributor
  end
end