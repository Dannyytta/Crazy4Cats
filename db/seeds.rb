# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  
  20.times do |i|
    User.create(email: "test#{i}@gmail.com", password:"asdasdasd", password_confirmation: "asdasdasd", name: Faker::Name.name)
  end
  
  100.times do
    Article.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false), user_id: Faker::Number.between(from: 1, to: 10))
  end
  
  