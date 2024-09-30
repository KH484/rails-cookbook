# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.destroy_all
# destroying the exiting ones before it populates with new data

Recipe.create(name: "Speghetti Carbonara", description: "an Italian classic", rating: 9.2)
Recipe.create(name: "Paella Del Mare", description: "an Spanish classic", rating: 8.5)
Recipe.create(name: "Beans on toast", description: "an English classic", rating: 6.2)
Recipe.create(name: "Green veg extravaganza", description: "Vegan extravaganza", rating: 4.2)
