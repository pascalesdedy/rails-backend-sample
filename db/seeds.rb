# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
	username = Faker::Name.unique.name
	email = Faker::Internet.unique.email
	User.create(username: username, email: email)
end

20.times do
	title = Faker::Lorem.paragraph(1)
	body = Faker::Lorem.paragraph(10)
	user = rand(1..10)
	Post.create( user_id: user, title: title, body: body)
end