# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Skill.destroy_all
List.destroy_all

skills = []
skills << Skill.create!({ name: "Tocar piano", description: "Seco para tocar el piano", price: 2000 })
skills << Skill.create!({ name: "Tocar guitarra", description: "Guitarrista de tomo y lomo", price: 5000 })
skills << Skill.create!({ name: "Programación", description: "Aprenderas mucho en este mundo", price: 7000 })

users = []
users << User.create!({
          name: "Son Goku",
          username: "Kakaroto",
          birthdate: "20/04/1991",
          photo: "https://www.elpopular.pe/sites/default/files/styles/img_620x465/public/imagen/2017/08/05/Noticia-186692-dragon-ball-super.jpg",
          biography: "Un tipo Profesional, con ganas de intercambiar información.",
          email: "goku@gmail.com",
          password: "12345678",
          password_confirmation: "12345678"
})
users << User.create!({
          name: "Vegeta",
          username: "Principe Saiyayin",
          birthdate: "30/08/1990",
          photo: "http://mouse.latercera.com/wp-content/uploads/2018/01/vegeta-4.jpg",
          biography: "Un tipo Profesional, con ganas de intercambiar información.",
          email: "vegeta@gmail.com",
          password: "12345678",
          password_confirmation: "12345678"
})
users << User.create!({
          name: "Son Gohan",
          username: "Gohan",
          birthdate: "28/10/2000",
          photo: "http://mouse.latercera.com/wp-content/uploads/2018/01/Gohan-900x506.jpg",
          biography: "Un tipo Profesional, con ganas de intercambiar información.",
          email: "gohan@gmail.com",
          password: "12345678",
          password_confirmation: "12345678"
})

lists = []
lists << List.create!({ user_id: users[1].id, skill_id: skills[0].id })
lists << List.create!({ user_id: users[0].id, skill_id: skills[2].id })
lists << List.create!({ user_id: users[2].id, skill_id: skills[1].id })
