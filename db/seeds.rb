
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

  user11 = User.create!(
    email: "Marjoline@gmail.com",
    first_name: "Marjoline",
    last_name: "Bernard",
    password: "azerty"
  )

  user12 = User.create!(
    email: "Mila@testmail.com",
    first_name: "Mila",
    last_name: "Kadjy",
    password: "azerty"
  )

puts 'Finished!'

puts 'Creating buddies...'

buddy1 = Buddy.new(
    skills: "Javascript",
    description: "Graphiste avec 4 ans d???exp??rience ayant produit du contenu graphique pour r??seaux sociaux et campagnes publicitaires digitales. Plus de 200 cr??ations ?? l???origine de dizaines de milliers de likes et partages sur les profils Twitter, Instagram et Facebook de mes clients.",
    user: user1
  )
buddy1.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653470017/49293752337_a02336c11a_h_xgrvzo.jpg"), filename: "image")
buddy1.save

buddy2 = Buddy.new(
    skills: "HTML/CSS",
    description: "Au cours de ces 5 derni??res ann??es en tant que charg??e de communication avec des entreprises B2B et B2C, j'ai d??velopp?? et mis en place des strat??gies de communication digitales qui ont permis d'obtenir de meilleurs taux d'engagement et de conversion. Au sein de l?????quipe Marketing chez Sharing, j'ai augment?? le taux d'engagement du compte Instagram de 23 %. Je souhaite mettre mes comp??tences en strat??gie de la communication et des r??seaux sociaux en tant que Social Media Manager chez ConnectPhase afin de booster votre taux de conversion et cr??er un contenu de qualit?? ?? travers la mise en place d'une strat??gie d'A/B testing performante.",
    user: user2
  )
buddy2.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044518/qr4u4wfztr9x1afpfpoz.jpg"), filename: "image")
buddy2.save

buddy3 = Buddy.new(
    skills: "PHP",
    description: "Au cours de ces 5 derni??res ann??es en tant que charg??e de communication avec des entreprises B2B et B2C, j'ai d??velopp?? et mis en place des strat??gies de communication digitales qui ont permis d'obtenir de meilleurs taux d'engagement et de conversion. Au sein de l?????quipe Marketing chez Sharing, j'ai augment?? le taux d'engagement du compte Instagram de 23 %. Je souhaite mettre mes comp??tences en strat??gie de la communication et des r??seaux sociaux en tant que Social Media Manager chez ConnectPhase afin de booster votre taux de conversion et cr??er un contenu de qualit?? ?? travers la mise en place d'une strat??gie d'A/B testing performante.",
    user: user3
  )
buddy3.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653645518/ez45jwj5q1cjuktoskuc.jpg"), filename: "image")
buddy3.save

buddy4 = Buddy.new(
  skills: "Ruby",
  description: "D??veloppeuse en freelance depuis cinq ans, je souhaite d??sormais mettre mes comp??tences et mon exp??rience au service d???Orange. Ayant con??u plusieurs dizaines d???applications de diff??rents genres (jeux mobiles, news, quiz, outils...), je peux appliquer ?? l?????quipe de d??veloppement d???Orange mes connaissances techniques (HTML5, Java/J2EE, C#), en UI et en analyse. ?? quoi s???ajoutent mes excellentes capacit??s d???adaptation et de communication.",
  user: user4
)
buddy4.photo.attach(io: URI.open("https://res.cloudinary.com/dgw2zajw1/image/upload/v1653044199/cld-sample.jpg"), filename: "image")
buddy4.save

buddy5 = Buddy.new(
  skills: "Python",
  description: "Hotel receptionist with a Bachelor???s degree from Vatel Hotel Management School, and one year of experience split in two hotels (luxurious and family hotels). Fluent in English, French and German. Great presentation, adaptation and courtesy helped hotels reach their highest satisfaction rate and largest number of five-star reviews during my two work placements. Eager to bring my organisational skills to Aloft London Excel.",
  user: user5
)
buddy5.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653645147/images_o7nfcc.jpg"), filename: "image")
buddy5.save

buddy6 = Buddy.new(
  skills: "PHP",
  description: "3 ans chez Rakuten, en tant que chef de projet marketing e-commerce et assistante marketing (secteur mode et beaut??). J???y ai augment?? le nombre de visiteurs de 30% et pass?? le taux de conversion de 1,8% ?? 4,2%. Ma??trisant les supports du marketing digital, r??seaux sociaux et contenu (CMS et Google Analytics), je peux permettre ?? votre boutique de mode en ligne d???exploser en nombre de visiteurs et d???acheteurs.",
  user: user6
)
buddy6.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653645051/studio-portrait-of-attractive-20-year-old-bearded-man-picture-id1296696829_skavuh.jpg"), filename: "image")
buddy6.save

buddy7 = Buddy.new(
  skills: "Ruby",
  description: "Suite ?? une reconversion professionnelle, j'ai souhait?? me diriger vers le domaine qui me passionne depuis longtemps: le d??veloppement web. J'ai donc suivi une formation d??bouchant sur le titre RNCP de niveau 3 de concepteur/d??veloppeur web.

  J'ai aujourd'hui plus de 4 ans d'exp??rience dans le d??veloppement web.

  N'h??sitez pas ?? me contacter.",
  user: user7
)
buddy7.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653647124/qz460jf1rerduxedsgvw.jpg"), filename: "image")
buddy7.save

buddy8 = Buddy.new(
  skills: "Javascript",
  description: "Cela fait maintenant 4 ans que je me suis sp??cialis?? dans la cr??ation de site internet afin de pouvoir d??velopper au mieux vos projets !

  Autodidacte et tr??s investi, j???ai le plaisir de vous proposer mes services en tant que web d??veloppeur et web master(Cr??ation de site internet, design, r??f??rencement, r??daction web, Community Manager???).

  Je vous accompagne tout au long de votre projet avec ?? la cl?? votre site internet !
  Alors n???h??sitez plus, contactez-moi d??s maintenant afin de faire d??coller votre projet.",
  user: user8
)
buddy8.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653645107/ijdo2q49xulnudjmmlyv.jpg"), filename: "image")
buddy8.save

buddy9 = Buddy.new(
  skills: "HTML/CSS",
  description: "Sp??cialis?? dans le d??veloppement front end, je suis en charge de l???interface utilisateur d???un site web ou d???une application. Mon m??tier n??cessite des comp??tences techniques pointues, doubl??es d???un v??ritable sens cr??atif. N'h??sitez pas ?? me consulter pour toute demande de projet, je mettrais mes qualit??s sur le fond comme sur la forme ?? votre service.
  Je sais aussi g??rer la gestion de projet car je suis quelqu'un d'organis??.",
  user: user9
)
buddy9.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653644740/wvcvxyvzrzno9b5wynex.jpg"), filename: "image")
buddy9.save

buddy10 = Buddy.new(
  skills: "Ruby",
  description: "D??veloppeur full stack certifi?? Scrum, avec plus de 2 ans d???exp??rience. Mordu d???informatique, j???ai appris ?? coder d??s mon plus jeune ??ge dans divers langages informatiques (Javascript, PHP, AngularJS???) et ai cr???? des projets personnels, dont un site r??f??ren??ant les vid??os les plus vues sur la plateforme Twitch (+ 5000 visites/mois). Polyvalent, je ma??trise les diff??rentes ??tapes techniques de la cr??ation d???un site ou d???une application web ; de la compr??hension des besoins utilisateurs, au d??veloppement frontend et backend en passant par la maintenance.",
  user: user10
)
buddy10.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653644845/AI_Face_w8twm5.jpg"), filename: "image")
buddy10.save

buddy11 = Buddy.new(
  skills: "HTML/CSS",
  description: "Specialized in front end development, I am in charge of the user interface of a website or an application. My job requires high technical skills, coupled with a real creative sense. Do not hesitate to contact me for any project request, I will put my qualities on the content as well as on the form at your service.
  I also know how to manage projects because I am an organized person.",
  user: user11
)
buddy11.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653647930/depositphotos_22256751-stock-photo-curly-hair-woman_jfd8pu.webp"), filename: "image")
buddy11.save

buddy12 = Buddy.new(
  skills: "Ruby",
  description: "Scrum certified full stack developer, with more than 2 years of experience. I learned to code from a young age in various computer languages (Javascript, PHP, AngularJS...) and created personal projects, including a site referencing the most viewed videos on the Twitch platform (+ 5000 visits/month). Versatile, I master the different technical steps of the creation of a website or a web application; from the understanding of the users' needs, to the frontend and backend development and the maintenance.",
  user: user12
)
buddy12.photo.attach(io: URI.open("https://res.cloudinary.com/dvtuelr2w/image/upload/v1653648126/portrait-femme-affaires-etonnee-tenant-ordinateur-portable-regardant-camera-visage-etonne-utilisant-ordinateur-pour-etudier-travaillant-ligne-choquee-par-application-tourne-studio-isole-fond-rose_416530-21840_rpgxwd.jpg"), filename: "image")
buddy12.save
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
