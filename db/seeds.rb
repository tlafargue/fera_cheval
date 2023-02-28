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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ca5f8773-683e-46b9-8351-2f30f7f778e3/SEED_1.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T153345Z&X-Amz-Expires=86400&X-Amz-Signature=19816f53480a1a0874db01d18d469fcc68f8ddea8fa72d58c13aa7400bc92c41&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22SEED%25201.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/279633cf-b6f0-472e-b983-cbe03a97cd2a/Image7.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T153449Z&X-Amz-Expires=86400&X-Amz-Signature=d1b87b44b4699cb164078c31aff6d80fa651166b671826dbaa16967c0d4c4101&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image7.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/8804c97b-9775-4cf1-9ac4-ec404e6719c1/Image6.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T153704Z&X-Amz-Expires=86400&X-Amz-Signature=9a2e63240ef0f3e618dcb831aa1729f53c1bb8d90c75fcd626e7ad259081170e&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image6.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ecd28265-5e4a-499c-b66a-7339a855443c/Image8.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T153858Z&X-Amz-Expires=86400&X-Amz-Signature=ef966ed8c788a2a6592c3e42140ca3a7bd6dabc2161fa6fc3c869223dfba15f9&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image8.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6c5357cd-e066-4b5e-9739-3bd8e15f246c/Image9.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T153931Z&X-Amz-Expires=86400&X-Amz-Signature=90fe078e885a74b97b7c0321ba778a50ad43f54e606bf6e84deab8d5d9e69404&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image9.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ac4290c2-7fc0-4531-bb1e-421d9a6eb8a6/Image3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154002Z&X-Amz-Expires=86400&X-Amz-Signature=a08e0b61a352a7dfff0f14c62ce413af7ab788d0a8a9e1123b1df6dee3e9ab1d&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image3.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/db5fe1c9-c243-4f00-a73d-95d3eee4a319/Image4.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154037Z&X-Amz-Expires=86400&X-Amz-Signature=7e95cb60539a80933011aef92e25a801b5e9db27b0e781cfc7796a1766f24710&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image4.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/031eeb11-6a16-4db4-9857-d2aeaafa8edf/Image10.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154111Z&X-Amz-Expires=86400&X-Amz-Signature=b0eb8f4d740f8b5b348fe163fd6fedc11af273ff2ceae141a3add358a51321a0&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image10.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/7124061b-3457-4786-800a-43ab483deb17/Image11.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154143Z&X-Amz-Expires=86400&X-Amz-Signature=5753d27668115041d913d23d2771288694ffd5210ed9fda0cd57e0a28bf986ad&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image11.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/35fa6dae-0733-4dd5-be14-b484753a12d9/Image12.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154245Z&X-Amz-Expires=86400&X-Amz-Signature=ba4a60c37f1c7f6761b880dba5907e7650bd2a407b453e064dc95150cf5927ac&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image12.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/4473aaca-55b8-4f88-83aa-ae38da455299/Image13.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154318Z&X-Amz-Expires=86400&X-Amz-Signature=540a135248e6b8b597c161cc506bec9fde5a67356395408d9aa875d4acf1feae&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image13.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/8b1ca5e8-22d8-4201-9c0c-70fba389522c/Image14.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154340Z&X-Amz-Expires=86400&X-Amz-Signature=d99bdc7bcf7507ffb2753bb024d91335778c4ace215c9d92d394b05299dbf1da&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image14.png%22&x-id=GetObject")
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
photo = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/62a60fe2-53b3-4331-ba96-c8ab58dfb3e9/Image5.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230228%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230228T154403Z&X-Amz-Expires=86400&X-Amz-Signature=5f990a1e36fcdb985713c7e298e52e868282abe5c1f73fe9b00222c051e776cd&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Image5.png%22&x-id=GetObject")
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
