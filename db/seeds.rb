
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

user7 = User.create!(
    email: "Christophe@testmail.com",
    first_name: "Christophe",
    last_name: "Bardz",
    password: "azerty"
  )

user8 = User.create!(
    email: "Alexis@testmail.com",
    first_name: "Alexis",
    last_name: "Denorme",
    password: "azerty"
  )

user9 = User.create!(
    email: "Pauline@gmail.com",
    first_name: "Pauline",
    last_name: "Bertrand",
    password: "azerty"
  )

user10 = User.create!(
    email: "Claire@testmail.com",
    first_name: "Claire",
    last_name: "Kadjar",
    password: "azerty"
  )

puts 'Finished!'

puts 'Creating buddies...'

buddy1 = Buddy.new(
    skills: "Javascript",
    description: "Graphiste avec 4 ans d’expérience ayant produit du contenu graphique pour réseaux sociaux et campagnes publicitaires digitales. Plus de 200 créations à l’origine de dizaines de milliers de likes et partages sur les profils Twitter, Instagram et Facebook de mes clients.",
    user: user1
  )
buddy1.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653470017/49293752337_a02336c11a_h_xgrvzo.jpg"), filename: "image")
buddy1.save

buddy2 = Buddy.new(
    skills: "HTML/CSS",
    description: "Au cours de ces 5 dernières années en tant que chargée de communication avec des entreprises B2B et B2C, j'ai développé et mis en place des stratégies de communication digitales qui ont permis d'obtenir de meilleurs taux d'engagement et de conversion. Au sein de l’équipe Marketing chez Sharing, j'ai augmenté le taux d'engagement du compte Instagram de 23 %. Je souhaite mettre mes compétences en stratégie de la communication et des réseaux sociaux en tant que Social Media Manager chez ConnectPhase afin de booster votre taux de conversion et créer un contenu de qualité à travers la mise en place d'une stratégie d'A/B testing performante.",
    user: user2
  )
buddy2.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044518/qr4u4wfztr9x1afpfpoz.jpg"), filename: "image")
buddy2.save

buddy3 = Buddy.new(
    skills: "PHP",
    description: "Au cours de ces 5 dernières années en tant que chargée de communication avec des entreprises B2B et B2C, j'ai développé et mis en place des stratégies de communication digitales qui ont permis d'obtenir de meilleurs taux d'engagement et de conversion. Au sein de l’équipe Marketing chez Sharing, j'ai augmenté le taux d'engagement du compte Instagram de 23 %. Je souhaite mettre mes compétences en stratégie de la communication et des réseaux sociaux en tant que Social Media Manager chez ConnectPhase afin de booster votre taux de conversion et créer un contenu de qualité à travers la mise en place d'une stratégie d'A/B testing performante.",
    user: user3
  )
buddy3.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy3.save

buddy4 = Buddy.new(
  skills: "Ruby",
  description: "Développeuse en freelance depuis cinq ans, je souhaite désormais mettre mes compétences et mon expérience au service d’Orange. Ayant conçu plusieurs dizaines d’applications de différents genres (jeux mobiles, news, quiz, outils...), je peux appliquer à l’équipe de développement d’Orange mes connaissances techniques (HTML5, Java/J2EE, C#), en UI et en analyse. À quoi s’ajoutent mes excellentes capacités d’adaptation et de communication.",
  user: user4
)
buddy4.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy4.save

buddy5 = Buddy.new(
  skills: "Python",
  description: "Hotel receptionist with a Bachelor’s degree from Vatel Hotel Management School, and one year of experience split in two hotels (luxurious and family hotels). Fluent in English, French and German. Great presentation, adaptation and courtesy helped hotels reach their highest satisfaction rate and largest number of five-star reviews during my two work placements. Eager to bring my organisational skills to Aloft London Excel.",
  user: user5
)
buddy5.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy5.save

buddy6 = Buddy.new(
  skills: "PHP",
  description: "3 ans chez Rakuten, en tant que chef de projet marketing e-commerce et assistante marketing (secteur mode et beauté). J’y ai augmenté le nombre de visiteurs de 30% et passé le taux de conversion de 1,8% à 4,2%. Maîtrisant les supports du marketing digital, réseaux sociaux et contenu (CMS et Google Analytics), je peux permettre à votre boutique de mode en ligne d’exploser en nombre de visiteurs et d’acheteurs.",
  user: user6
)
buddy6.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy6.save

buddy7 = Buddy.new(
  skills: "Bootstrap",
  description: "Suite à une reconversion professionnelle, j'ai souhaité me diriger vers le domaine qui me passionne depuis longtemps: le développement web. J'ai donc suivi une formation débouchant sur le titre RNCP de niveau 3 de concepteur/développeur web.

  J'ai aujourd'hui plus de 4 ans d'expérience dans le développement web.

  N'hésitez pas à me contacter.",
  user: user7
)
buddy7.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy7.save

buddy8 = Buddy.new(
  skills: "UX/UI",
  description: "Cela fait maintenant 4 ans que je me suis spécialisé dans la création de site internet afin de pouvoir développer au mieux vos projets !

  Autodidacte et très investi, j’ai le plaisir de vous proposer mes services en tant que web développeur et web master(Création de site internet, design, référencement, rédaction web, Community Manager…).

  Je vous accompagne tout au long de votre projet avec à la clé votre site internet !
  Alors n’hésitez plus, contactez-moi dès maintenant afin de faire décoller votre projet.",
  user: user8
)
buddy8.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy8.save

buddy9 = Buddy.new(
  skills: "Javascript",
  description: "Spécialisé dans le développement front end, je suis en charge de l’interface utilisateur d’un site web ou d’une application. Mon métier nécessite des compétences techniques pointues, doublées d’un véritable sens créatif. N'hésitez pas à me consulter pour toute demande de projet, je mettrais mes qualités sur le fond comme sur la forme à votre service.
  Je sais aussi gérer la gestion de projet car je suis quelqu'un d'organisé.",
  user: user9
)
buddy9.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy9.save

buddy10 = Buddy.new(
  skills: "jQuery",
  description: "Développeur full stack certifié Scrum, avec plus de 2 ans d’expérience. Mordu d’informatique, j’ai appris à coder dès mon plus jeune âge dans divers langages informatiques (Javascript, PHP, AngularJS…) et ai créé des projets personnels, dont un site référençant les vidéos les plus vues sur la plateforme Twitch (+ 5000 visites/mois). Polyvalent, je maîtrise les différentes étapes techniques de la création d’un site ou d’une application web ; de la compréhension des besoins utilisateurs, au développement frontend et backend en passant par la maintenance.",
  user: user10
)
buddy10.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy10.sav4
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
