# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Skill.destroy_all

8.times do |i|
  User.create(name: "User #{i}", email: "email#{i}@gmail.com", password: "12345678", username: "Usuario#{i}", birthdate: "0#{i}-04-1991", biography: "Comentario de algo.")
  Skill.create(name: "Skill #{i}", description: "Esta es una descripcion.", price: "199#{i}")
end
