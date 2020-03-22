# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
User.create(username: "Nathan", password: "123")
User.create(username: "Ben", password: "123")
User.create(username: "Sam", password: "123")


Character.create(name: "Billy", strength: 10, hp: 100, score: 50, user_id: 1)
Character.create(name: "Charles", strength: 10, hp: 100, score: 75, user_id: 2)
Character.create(name: "Max", strength: 10, hp: 100, score: 90, user_id: 3)
Character.create(name: "Stan", strength: 10, hp: 100, score: 120, user_id: 4)



