# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Horse.destroy_all
User.destroy_all
Booking.destroy_all

puts 'Creating users...'
user = User.create!(name: 'John Doe', email: 'johndoe@example.com', password: 'password')

puts 'Creating horses...'
horse1 = user.horses.create!(name: 'Tornado', breed: 'Percheron', specialty: 'Cheval de trait', age: 5, sex: 'Femelle', price: 120)
horse2 = user.horses.create!(name: 'Cacahuete', breed: 'Appaloosa', specialty: 'Cheval de course', age: 3, sex: 'Male', price: 150)
horse3 = user.horses.create!(name: 'Marguerite', breed: 'Frison', specialty: 'Cheval de trait', age: 7, sex: 'Femelle', price: 100)

puts 'Creating bookings...'
booking1 = user.bookings.create(horse: horse1, start_date: Date.today, end_date: Date.today + 3.days, total_price: 360, status: 'pending')
booking2 = user.bookings.create(horse: horse2, start_date: Date.today + 1.week, end_date: Date.today + 2.weeks, total_price: 300, status: 'approved')
booking3 = user.bookings.create(horse: horse3, start_date: Date.today + 2.weeks, end_date: Date.today + 3.weeks, total_price: 200, status: 'declined')
