FactoryBot.define do
  factory :recipe_ingredient do
   recipe 
   ingredient
   qty { 10 }
   unit { "grams" }
 end
end
