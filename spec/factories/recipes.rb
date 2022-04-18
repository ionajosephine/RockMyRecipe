FactoryBot.define do
  factory :recipe do
    sequence(:title) { |number| "Recipe #{number}" }
    sequence(:description) { |number| "You will love Recipe Number #{number} because..." }
    sequence(:instructions) { |number| "Some instructions for Recipe Number #{number} go here" }
    contributor
  end
end