# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all
Category.destroy_all

2.times do |c|
	Category.create(name:"Categoria #{c}"))
end

c = Category.last
Item.create(serie:1, description:"item 3", size: 4, category_id:c.id)

User.create(name: "maria", email:"holas@hola.cl")

2.times do |u|
	User.create(name: "maria", email:"holas#{u}@hola.cl")
end

u = User.last
3.times do |i|
	Item.create(serie:i, description:"item #{i}", size: i, category_id:c.id, user_id: u.id)
end	
