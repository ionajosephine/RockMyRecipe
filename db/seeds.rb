# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


c1 = Contributor.create( email: "sally@example.com", profile_name: "Sally", password: "password" )
c2 = Contributor.create( email: "benjamin@example.com", profile_name: "Benjamin", password: "password" )
c3 = Contributor.create( email: "nihal@example.com", profile_name: "Nihal", password: "password" )

recipe1 = Recipe.create( title: "Chocolate Cake", description: "You will love this luxuriously rich dark chocolate cake with curls of real chocolate on top! It's the stuff of dreams 🦄", contributor: Contributor.last )
recipe2 = Recipe.create( title: "Lemon Muffins", description: "These delightful lemon muffins have a dash of orange in them for extra sweetness. Only 18 minutes in the oven too!", contributor: Contributor.last )
recipe3 = Recipe.create( title: "Rainbow Salad", description: "Who doesn't love rainbows? With this salad you're sure to get your 5 a day in just one meal and with a range of textures it tastes delicious too.🦄", contributor: Contributor.first )
recipe4 = Recipe.create( title: "Tahini lasagna", description: "Try it to believe it! The sauce in this lasagna is creamier than dairy and exceptionally moreish. You will love it. 🦄", contributor: Contributor.first )

ingredients = %w( broccoli carrot tahini beans pasta tomato chocolate flour lemon orange vanilla potato tarragon parsley chickpeas salt olives pepper chilli )

ingredients.each do |ingredient| 
  Ingredient.create(name: ingredient)
  ingredient = Ingredient.last
  RecipeIngredient.create(recipe: Recipe.first, ingredient: ingredient)
end

ingredients2 = Ingredient.all

ingredients2.each do |ingredient|
  RecipeIngredient.create(recipe: Recipe.second, ingredient: ingredient)
  RecipeIngredient.create(recipe: Recipe.third, ingredient: ingredient)
end

