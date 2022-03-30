FactoryBot.define do
  factory :recipe do
    sequence(:title) { |number| "Recipe #{number}" }
  end
end