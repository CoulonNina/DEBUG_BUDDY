
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Buddy.destroy_all
User.destroy_all

puts 'Creating Users...'
user1 = User.create!(
    email: "jojo@testmail.com",
    first_name: "Ferdinand",
    last_name: "Jojo",
    password: "azerty"
  )

user2 = User.create!(
    email: "Teppanyaki@testmail.com",
    first_name: "Boris",
    last_name: "Teppa",
    password: "azerty"
  )

user3 = User.create!(
    email: "Sazanka@testmail.com",
    first_name: "Bob",
    last_name: "Sazanka",
    password: "azerty"
  )
puts 'Finished!'


puts 'Creating buddies...'

buddy1 = Buddy.new(
    skills: "Javascript",
    description: "J'adore coder et je suis hyper sympa",
    user: user1
  )
buddy1.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653470017/49293752337_a02336c11a_h_xgrvzo.jpg"), filename: "image")
buddy1.save

buddy2 = Buddy.new(
    skills: "HTML/CSS",
    description: "Je suis prète à vous aider sur de nouveaux projets",
    user: user2
  )
buddy2.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044518/qr4u4wfztr9x1afpfpoz.jpg"), filename: "image")
buddy2.save

buddy3 = Buddy.new(
    skills: "PHP",
    description: "N'hesitez pas à me contacter, je code depuis des années !",
    user: user3
  )
buddy3.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy3.save

puts 'Finished!'

puts 'Creating bookinks...'
Booking.create!(
    user_id: user1.id,
    buddy_id: buddy2.id,
    start_date: Date.today,
    end_date: Date.tomorrow,
)

Booking.create!(
    user_id: user2.id,
    buddy_id: buddy3.id,
    start_date: Date.yesterday,
    end_date: Date.today,
  )
Booking.create!(
    user_id: user3.id,
    buddy_id: buddy1.id,
    start_date: Date.today,
    end_date: Date.tomorrow,
  )
puts 'Finished!'
