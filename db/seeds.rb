# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Database...'

Hosting.destroy_all
Event.destroy_all
Wish.destroy_all
ActivityTag.destroy_all
Activity.destroy_all
Message.destroy_all
Conversation.destroy_all
Tag.destroy_all
Category.destroy_all
User.destroy_all

puts 'Database cleaned!'

puts 'Creating users...'

User.create!(first_name: 'lucien', last_name: 'george', age: 23, email: 'lucien@gmail.com', password: '123456')
User.create!(first_name: 'gaby', last_name: 'martinez', age: 24, email: 'gaby@gmail.com', password: '123456')
User.create!(first_name: 'izzy', last_name: 'brown', age: 23, email: 'izzy@gmail.com', password: '123456')
User.create!(first_name: 'ife', last_name: 'odugbesan', age: 29, email: 'ife@gmail.com', password: '123456')

puts 'Users created!'


