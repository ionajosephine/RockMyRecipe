# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


c1 = Contributor.create( email: "sally@example.com", profile_name: "Sally", password: "password", website: "www.example.com", twitter: "@sally", bio: "Professional chef who likes donating recipes to good causes" )
c2 = Contributor.create( email: "benjamin@example.com", profile_name: "Benjamin", password: "password", website: "www.example.com", tiktok: "<Link to Benjamin's tiktok>", bio: "Food blogger growing my own veg and contributing recipes to good causes" )
c3 = Contributor.create( email: "nihal@example.com", profile_name: "Nihal", password: "password", website: "www.example.com", pinterest: "<link to Nihal's pinterest page>", bio: "Passionate about food photography and cooking; sharing my recipes and photos for good causes" )

# recipe1 = Recipe.create( title: "Chocolate Cake", description: "You will love this luxuriously rich dark chocolate cake with curls of real chocolate on top! It's the stuff of dreams 🦄", contributor: Contributor.find_by(profile_name: "Sally") )
# recipe2 = Recipe.create( title: "Lemon Muffins", description: "These delightful lemon muffins have a dash of orange in them for extra sweetness. Only 18 minutes in the oven too!", contributor: Contributor.find_by(profile_name: "Benjamin") )
# recipe3 = Recipe.create( title: "Rainbow Salad", description: "Who doesn't love rainbows? With this salad you're sure to get your 5 a day in just one meal and with a range of textures it tastes delicious too.🦄", contributor: Contributor.find_by(profile_name: "Nihal") )
# recipe4 = Recipe.create( title: "Tahini lasagna", description: "Try it to believe it! The sauce in this lasagna is creamier than dairy and exceptionally moreish. You will love it. 🦄", contributor: Contributor.find_by(profile_name: "Nihal" ) )

# ingredients1 = %w( lemon orange vanilla potato tarragon parsley chickpeas salt olives pepper chilli )

# ingredients1.each do |ingredient| 
#   Ingredient.create(name: ingredient)
#   ingredient = Ingredient.last
#   RecipeIngredient.create(recipe: Recipe.first, ingredient: ingredient, qty: rand(1..10))
# end

# ingredients2 = %w( broccoli carrot tahini beans pasta tomato chocolate flour )

# ingredients2.each do |ingredient|
#   Ingredient.create(name: ingredient)
#   ingredient = Ingredient.last
#   RecipeIngredient.create(recipe: Recipe.second, ingredient: ingredient, qty: rand(1..10))
# end

# ingredients3 = %w( beans pasta tomato chocolate flour olives pepper chilli )

# ingredients3.each do |ingredient|
#   Ingredient.create(name: ingredient)
#   ingredient = Ingredient.last
#   RecipeIngredient.create(recipe: Recipe.third, ingredient: ingredient, qty: rand(1..10))
# end

