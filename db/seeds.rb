5.times do
  username = "#{Faker::Color.color_name}#{Faker::Creature::Animal.name}"
  email = "#{username}@test.com"
  user = User.create!(username: username, email: email, password: "password")
  user.save
end

25.times do
  title = Faker::Food.dish
  description = Faker::Food.description
  user_id = rand(1..5)
  times = [5, 10, 15, 20, 25, 30]
  random_time1 = rand(5)
  random_time2 = rand(5)
  cook_time = times[random_time1]
  prep_time = times[random_time2]
  recipe = Recipe.create!(title: title, description: description, user_id: user_id, cook_time: cook_time, prep_time: prep_time)
  recipe.save
end

100.times do
  measurement = rand(1..10)
  units = ["cup", "teaspoon", "tablespoon"]
  random_unit = rand(3)
  unit = units[random_unit]
  names = [Faker::Food.fruits, Faker::Food.spice, Faker::Food.vegetables, Faker::Food.ingredient]
  random_name = rand(4)
  name = names[random_name]
  recipe_id = rand(1..25)
  ingredient = Ingredient.create!(name: name, measurement: measurement, unit: unit, recipe_id: recipe_id)
  ingredient.save
end
