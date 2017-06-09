# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.delete_all
User.delete_all

event_data = [
  {name: "ESL One Cologne", organizer: "ESL", venue: "Lanxess Arena", city: "Cologne", country: "Germany", min_age: 16, stream: "twitch link",
    tickets: "ticket buy link", size: "1001-3000", stadium: true, vip_tickets: true, food_drinks: true, merch_sold: true},
  {name: "PGL Major Krakow", organizer: "ESL", venue: "Lanxess Arena", city: "Krakow", country: "Poland", min_age: 16, stream: "twitch link",
    tickets: "ticket buy link", size: "1-1000", stadium: true, vip_tickets: true, food_drinks: true, merch_sold: true}
  ]

user_data = [
  {email: "a@b.com", password: "123456", first_name: "abby", last_name: "boyd", username: "abboyd", country: "USA", admin: true},
  {email: "b@c.com", password: "123456", first_name: "ben", last_name: "cloud", username: "ben_not_admin", country: "USA", admin: false}
]

Event.create(event_data)
User.create(user_data)

p "seed data created"
