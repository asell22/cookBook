# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# FoodPreference.create([{name: 'Dairy Free'}, {name: 'Vegan'}, {name: 'Vegetarian'}, {name: 'Meat'}, {name: 'Other'}])

FoodType.create([{name: 'Main Course'}, {name: 'Side Dish'}, {name: 'Dessert'}, {name: 'Breakfast'}, {name: 'Beverage'}, {name: 'Other'}])

Cuisine.create([{name: 'French'}, {name: 'Italian'}, {name: 'Chinese'}, {name: 'Indian'}, {name: 'Thai'}, {name: 'Mexican'},{name: 'Japanese'}, {name: 'Spanish'}, {name: 'Greek'}, {name: 'Lebanese'}, {name: 'American'}, {name: 'Other'}])
