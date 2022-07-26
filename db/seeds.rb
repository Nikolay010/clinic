# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do
#   category = Category.create( name: Faker::DcComics.hero )
#   doctor = Doctor.create( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
#                           email: Faker::Internet.email, encrypted_password: SecureRandom.hex(8),
#                           phone:Faker::PhoneNumber.cell_phone, category: category )
#
#   password = SecureRandom.hex(6)
#
#   patient = Patient.create( first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name,
#                             email: Faker::Internet.email, phone: Faker::PhoneNumber.unique.cell_phone, password: password,
#                             password_confirmation: password)
# end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', phone: '0961122333') if Rails.env.development?