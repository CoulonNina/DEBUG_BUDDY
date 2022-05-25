
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

  user4 = User.create!(
    email: "jennyfer@testmail.com",
    first_name: "Jennyfer",
    last_name: "Sardou",
    password: "azerty"
  )

  user5 = User.create!(
    email: "paul@gmail.com",
    first_name: "Paul",
    last_name: "Bert",
    password: "azerty"
  )

  user6 = User.create!(
    email: "Tom@testmail.com",
    first_name: "Tom",
    last_name: "Paradis",
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

buddy4 = Buddy.new(
  skills: "Ruby",
  description: "Hello everyone, book a session if you need help !",
  user: user4
)
buddy4.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy4.save

buddy5 = Buddy.new(
  skills: "Python",
  description: "N'hesitez pas à me contacter, ne restew plus bloqué !",
  user: user5
)
buddy5.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy5.save

buddy6 = Buddy.new(
  skills: "PHP",
  description: "N'hesitez pas à me contacter, je code depuis des années !",
  user: user6
)
buddy6.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy6.save
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
