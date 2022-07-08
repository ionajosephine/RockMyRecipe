FactoryBot.define do
  factory :recipe do
    sequence(:title) { |number| "Recipe #{number}" }
    sequence(:description) { |number| "You will love Recipe Number #{number} because..." }
    contributor
  end
end