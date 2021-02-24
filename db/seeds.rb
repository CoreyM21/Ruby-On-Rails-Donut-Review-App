# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Donut.create([
    {name: "Boston Creme", color: "Brown", location: "Bay Shore", user_id: 1},
    {name: "Strawberry OG", color: "Pink", location: "Mattituck", user_id: 1},
    {name: "Vanilla OG", color: "White and brown", location: "Bay Shore", user_id: 1}   
])

# Corey = User.new(username: "Corey", email: "corey@corey.com", password: "corey")
