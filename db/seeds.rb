# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FFaker::Name.first_name
FFaker::Name.last_name
FFaker::Internet.email
FFaker::PhoneNumber.phone_number

10.times do
  user1 = User.new(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email, phone_number: FFaker::PhoneNumber.phone_number)

  user1.save
end
