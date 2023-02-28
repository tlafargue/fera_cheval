puts "Création des seeds"
Booking.destroy_all
Horse.destroy_all
User.destroy_all
puts "Database cleaned"

############## USERS ##############
### U1 ###
uun = User.create(
  name: 'laurent',
  email: 'laurent@gmail.com',
  password: 'blablabla'
)

### U2 ###
udeux = User.create(
  name: 'frederic',
  email: 'frederic@gmail.com',
  password: 'ploploplo'
)

### U3 ###
utrois = User.create(
  name: 'nathalie',
  email: 'nathalie@gmail.com',
  password: 'miamiamiam'
)

### U4 ###
uquatre = User.create(
  name: 'marc',
  email: 'marc@gmail.com',
  password: 'ploufplouf'
)

puts "OK pour les Gens"
############## HORSES ##############
### H1 ###
un = Horse.create(
  user: uun,
  name: 'Maxime.D',
  breed: 'Sauteur',
  specialty: 'Saut de Haies',
  city: 'Rennes',
  age: 6,
  sex: 'femelle',
  price: 150
)

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

### H11 ###
onze = Horse.create(
  user: uquatre,
  name: 'Huguette',
  breed: 'Pur sang crêpe',
  specialty: 'Course',
  city: 'Limoges',
  age: 12,
  sex: 'femelle',
  price: 120
)

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
