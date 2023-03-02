puts "Création des seeds"
Booking.destroy_all
Horse.destroy_all
User.destroy_all
puts "Database cleaned"

############## USERS ##############
### U1 ###
uun = User.new(
  name: 'Maxime',
  email: 'maxime@gmail.com',
  password: 'jtmmanon'
)
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U04JN37722K-e7db3336040a-512")
uun.photo.attach(io: photo, filename: "maxime_profile.png", content_type: "image/png")
uun.save
uun = User.all.last

### U2 ###
udeux = User.create(
  name: 'Charles',
  email: 'charles@gmail.com',
  password: 'jtmmanon'
)
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U04JZJUAC5B-6e7ac04ff0e2-512")
udeux.photo.attach(io: photo, filename: "charles_profile.png", content_type: "image/png")
udeux.save
udeux = User.all.last

### U3 ###
utrois = User.create(
  name: 'Don Enzo',
  email: 'donenzo@gmail.com',
  password: 'mamamia'
)
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U04KG7G9YAV-eedf41b5396f-512")
utrois.photo.attach(io: photo, filename: "enzo_profile.png", content_type: "image/png")
utrois.save
utrois = User.all.last

### U4 ###
uquatre = User.create(
  name: 'Huguette',
  email: 'huguette@gmail.com',
  password: 'ploufplouf'
)
photo = URI.open("https://openai-labs-public-images-prod.azureedge.net/user-ZQFEFFTLmnJA5dAa6KBERdC0/generations/generation-vuqdb7huoF0WIidxn31f3nVN/image.webp")
uquatre.photo.attach(io: photo, filename: "huguette_profile.png", content_type: "image/png")
uquatre.save
uquatre = User.all.last

puts "OK pour les Gens"
############## HORSES ##############
### H1 ###
un = Horse.create(
  user: uun,
  name: 'Mixame',
  breed: 'Sauteur',
  specialty: 'Saut de Haies',
  city: 'Rennes',
  age: 6,
  sex: 'femelle',
  price: 150
)
photo = URI.open("https://lafargue.cc/horses/C1.png")
un.photo.attach(io: photo, filename: "maxime_d.png", content_type: "image/png")
un.save
un = Horse.all.last

### H2 ###
deux = Horse.create(
  user: uun,
  name: 'Tornado',
  breed: 'Percheron',
  specialty: 'Cheval de trait',
  city: 'Rennes',
  age: 12,
  sex: 'femelle',
  price: 120
)
photo = URI.open("https://lafargue.cc/horses/C2.png")
deux.photo.attach(io: photo, filename: "tornado.png", content_type: "image/png")
deux.save
deux = Horse.all.last

### H3 ###
trois = Horse.create(
  user: uun,
  name: 'Cacahuète',
  breed: 'Appaloosa',
  specialty: 'Cheval de course',
  city: 'Paris',
  age: 7,
  sex: 'mâle',
  price: 150
)
photo = URI.open("https://lafargue.cc/horses/C3.png")
trois.photo.attach(io: photo, filename: "cacahuete.png", content_type: "image/png")
trois.save
trois = Horse.all.last

### H4 ###
quatre = Horse.create(
  user: udeux,
  name: 'Marguerite',
  breed: 'Frison',
  specialty: 'Cheval de gala',
  city: 'Versaille',
  age: 5,
  sex: 'femelle',
  price: 100
)
photo = URI.open("https://lafargue.cc/horses/C4.png")
quatre.photo.attach(io: photo, filename: "marguerite.png", content_type: "image/png")
quatre.save
quatre = Horse.all.last

### H5 ###
cinq = Horse.create(
  user: udeux,
  name: 'Roger',
  breed: 'Selle française',
  specialty: 'Cheval de course',
  city: 'Saint-Vergeron',
  age: 6,
  sex: 'mâle',
  price: 220
)
photo = URI.open("https://lafargue.cc/horses/C5.png")
cinq.photo.attach(io: photo, filename: "roger.png", content_type: "image/png")
cinq.save
cinq = Horse.all.last

### H6 ###
six = Horse.create(
  user: udeux,
  name: 'Georges',
  breed: 'Pur sang anglais',
  specialty: 'Cheval de trait',
  city: 'Angers',
  age: 10,
  sex: 'mâle',
  price: 180
)
photo = URI.open("https://lafargue.cc/horses/C6.png")
six.photo.attach(io: photo, filename: "georges.png", content_type: "image/png")
six.save
six = Horse.all.last

### H7 ###
sept = Horse.create(
  user: udeux,
  name: 'Brenda',
  breed: 'Licorne',
  specialty: 'Promenade',
  city: 'Poudlard',
  age: 1664,
  sex: 'femelle',
  price: 120
)
photo = URI.open("https://lafargue.cc/horses/C7.png")
sept.photo.attach(io: photo, filename: "brenda.png", content_type: "image/png")
sept.save
sept = Horse.all.last

### H8 ###
huit = Horse.create(
  user: utrois,
  name: 'Jean-Mimi',
  breed: 'Frison',
  specialty: 'Promenade',
  city: 'Lampaul',
  age: 10,
  sex: 'mâle',
  price: 120
)
photo = URI.open("https://lafargue.cc/horses/C8.png")
huit.photo.attach(io: photo, filename: "jeanmimi.png", content_type: "image/png")
huit.save
huit = Horse.all.last

### H9 ###
neuf = Horse.create(
  user: utrois,
  name: 'Simba',
  breed: 'Percheron',
  specialty: 'Cheval de Gala',
  city: 'Angers',
  age: 6,
  sex: 'mâle',
  price: 100
)
photo = URI.open("https://lafargue.cc/horses/C9.png")
neuf.photo.attach(io: photo, filename: "simba.png", content_type: "image/png")
neuf.save
neuf = Horse.all.last

### H10 ###
dix = Horse.create(
  user: uquatre,
  name: 'Mickey',
  breed: 'Trotteur',
  specialty: 'Promenade',
  city: 'Nantes',
  age: 10,
  sex: 'mâle',
  price: 140
)
photo = URI.open("https://lafargue.cc/horses/C10.png")
dix.photo.attach(io: photo, filename: "mickey.png", content_type: "image/png")
dix.save
dix = Horse.all.last

### H11 ###
onze = Horse.create(
  user: uquatre,
  name: 'Hugo',
  breed: 'Pur sang crêpe',
  specialty: 'Course',
  city: 'Limoges',
  age: 12,
  sex: 'mâle',
  price: 120
)
photo = URI.open("https://lafargue.cc/horses/C11.png")
onze.photo.attach(io: photo, filename: "bernadette.png", content_type: "image/png")
onze.save
onze = Horse.all.last

### H12 ###
douze = Horse.create(
  user: uquatre,
  name: 'Franck',
  breed: 'Selle français',
  specialty: 'Promenade',
  city: 'Vannes',
  age: 9,
  sex: 'mâle',
  price: 130
)
photo = URI.open("https://lafargue.cc/horses/C12.png")
douze.photo.attach(io: photo, filename: "franck.png", content_type: "image/png")
douze.save
douze = Horse.all.last

### H13 ###
treize = Horse.create(
  user: uquatre,
  name: 'Anna',
  breed: 'Pur-sang irlandais',
  specialty: 'Cheval de "petite-taille"',
  city: 'Dunkerque',
  age: 8,
  sex: 'femelle',
  price: 200
)
photo = URI.open("https://lafargue.cc/horses/C13.png")
treize.photo.attach(io: photo, filename: "lolita.png", content_type: "image/png")
treize.save
treize = Horse.all.last

puts "OK pour les Bigadins"
############## BOOKING ##############
### B1 ###
d1 = Date.new(2023, 3, 15)
d2 = Date.new(2023, 3, 18)
Booking.create(
  horse: deux,
  user: uquatre,
  start_date: d1,
  end_date: d2,
  total_price: 360,
  status: :pending
)

### B2 ###
d3 = Date.new(2023, 3, 23)
d4 = Date.new(2023, 3, 26)
Booking.create(
  horse: un,
  user: utrois,
  start_date: d3,
  end_date: d4,
  total_price: 150,
  status: :approved
)

### B3 ###
d5 = Date.new(2023, 3, 4)
d6 = Date.new(2023, 3, 6)
Booking.create(
  horse: cinq,
  user: uun,
  start_date: d5,
  end_date: d6,
  total_price: 440,
  status: :approved
)

### B4 ###
d7 = Date.new(2023, 3, 15)
d8 = Date.new(2023, 3, 18)
Booking.create(
  horse: treize,
  user: utrois,
  start_date: d7,
  end_date: d8,
  total_price: 450,
  status: :pending
)

### B5 ###
d9 = Date.new(2023, 3, 25)
d10 = Date.new(2023, 3, 26)
Booking.create(
  horse: quatre,
  user: uun,
  start_date: d9,
  end_date: d10,
  total_price: 100,
  status: :approved
)

### B6 ###
d11 = Date.new(2023, 3, 12)
d12 = Date.new(2023, 3, 14)
Booking.create(
  horse: six,
  user: uun,
  start_date: d11,
  end_date: d12,
  total_price: 450,
  status: :declined
)

### B7 ###
d13 = Date.new(2023, 4, 22)
d14 = Date.new(2023, 4, 25)
Booking.create(
  horse: sept,
  user: udeux,
  start_date: d13,
  end_date: d14,
  total_price: 300,
  status: :approved
)

### B8 ###
d15 = Date.new(2023, 3, 21)
d16 = Date.new(2023, 3, 23)
Booking.create(
  horse: onze,
  user: utrois,
  start_date: d15,
  end_date: d16,
  total_price: 240,
  status: :approved
)

### B9 ###
d17 = Date.new(2023, 3, 1)
d19 = Date.new(2023, 3, 4)
Booking.create(
  horse: deux,
  user: uquatre,
  start_date: d17,
  end_date: d19,
  total_price: 360,
  status: :declined
)

### B10 ###
d20 = Date.new(2023, 3, 28)
d12 = Date.new(2023, 3, 29)
Booking.create(
  horse: un,
  user: uquatre,
  start_date: d20,
  end_date: d12,
  total_price: 150,
  status: :declined
)

### B11 ###
d21 = Date.new(2023, 3, 6)
d22 = Date.new(2023, 3, 8)
Booking.create(
  horse: un,
  user: utrois,
  start_date: d21,
  end_date: d22,
  total_price: 150,
  status: :accepted
)

puts "OK pour les Book"
puts "Tout est créé mon gars !"
