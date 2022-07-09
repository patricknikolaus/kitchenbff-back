# 3.times do
#   user_name = Faker::Color.color_name + Faker::Creature::Animal.name
#   user_email = Faker::Internet.email
#   User.create(username: "#{user_name}", email: "#{user_email}")
# end

# 10.times do
#   recipe_user_id = rand(1..3)
#   recipe_name = Faker::Food.dish
#   recipe_chef = Faker::Name.name
#   p recipe_chef
#   p recipe_user_id
#   p recipe_name
#   Recipe.create(user_id: recipe_user_id, name: "#{recipe_name}", chef: "#{recipe_chef}")
# end

# 25.times do
#   food = Faker::Food.ingredient
#   num = rand(1..3)
#   i = rand(0..2)
#   r_id = rand(3..12)
#   measure = ["Tbsp", "tsp", "cup", "oz", "g"]
#   Ingredient.create(name: "#{food}", measurement: "#{num} #{measure[i]}", recipe_id: r_id)
# end
