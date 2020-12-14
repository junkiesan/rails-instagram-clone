# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.destroy_all
Post.destroy_all
p 'data destroyed'
Account.create([
  { username: "jujulien", first_name: "Julien", last_name: "Bouland", email: "lol@example.com", password: "123456" },
  { username: "lauuura", first_name: "Laura", last_name: "Schmidt", email: "laura@example.com", password: "123456" },
  { username: "alexXx", first_name: "Alex", last_name: "Young", email: "alex@example.com", password: "123456" },
])