# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: 1, password: "passwd", email: "admin@gmail.com", username: "admin", role: "admin")
User.create(id: 2, password: "passwd2", email: "admin2@gmail.com", username: "admin2", role: "admin")
User.create(id: 3, password: "passwd3", email: "admin3@gmail.com", username: "admin3")
User.create(id: 4, password: "passwd", email: "tester@gmail.com", username: "tester")
User.create(id: 5, password: "passwd2", email: "tester2@gmail.com", username: "tester2")
