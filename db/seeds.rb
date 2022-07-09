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

