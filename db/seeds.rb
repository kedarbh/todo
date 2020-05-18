# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  ["user1@example.com", 12345678],
  ["user2@example.com", 12345678],
  ["user3@example.com", 12345678],
  ["user4@example.com", 12345678]
]

user_list.each do |email, password|
  User.create(email: email, password: password)
end
