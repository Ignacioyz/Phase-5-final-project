# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# U1 = User.create!("first_name": "Alan", "last_name": "Santos", "username": 
#     "Alancito", "password_digest": "Apple12!", "email": "Mcfly90@gmail.com", "admin":
#  false)

 U2 = User.create!(first_name: "Logan", last_name: "Guillory", username: 
    "BigDaddy", password: "Apple12!", email: "BigDaddy26@gmail.com", admin:
 false)
 cart = Cart.create!()
 painting = Painting.create!(title: 'burladero', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/burladero.jpeg'), filename: 'burladero.jpg')

 painting = Painting.create!(title: '50', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/50.jpg'), filename: '50.jpg')

 painting = Painting.create!(title: '54', description: 'Acrylic on Paper, (18"x 24")', price: 10.50);
 painting.image.attach(io: File.open('./public/54.jpg'), filename: '54.jpg')

 painting = Painting.create!(title: 'africano', description: 'Acrylic on Canvas, (22"x28")', price: 10.50);
 painting.image.attach(io: File.open('./public/africano.jpg'), filename: 'africano.jpg')

 painting = Painting.create!(title: 'alegria', description: 'Acrylic on Paper (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/alegria.jpg'), filename: 'alegria.jpg')

 painting = Painting.create!(title: 'banderillas-2', description: 'Acrylic on Canvas, (22"x28")', price: 10.50);
 painting.image.attach(io: File.open('./public/banderillas-2.jpg'), filename: 'banderillas-2.jpg')

 painting = Painting.create!(title: 'banderillas', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/banderillas.jpg'), filename: 'banderillas.jpg')
 
 painting = Painting.create!(title: 'black-moon', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/black-moon.jpg'), filename: 'black-moon.jpg')
 
 painting = Painting.create!(title: 'brandy', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/brandy.jpg'), filename: 'brandy.jpg')
 
 painting = Painting.create!(title: 'bull', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/bull.jpg'), filename: 'bull.jpg')
 
 painting = Painting.create!(title: 'cactus-2', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/cactus.jpg'), filename: 'cactus.jpg')
 
 painting = Painting.create!(title: 'cactus-dance', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/cactus-dance.jpg'), filename: 'cactus-dance.jpg')
 
 painting = Painting.create!(title: 'cactus', description: 'Acrylic on Canvas, (24"x36")', price: 10.50);
 painting.image.attach(io: File.open('./public/cactus.jpg'), filename: 'cactus.jpg')
 
 painting = Painting.create!(title: 'califa-manolete', description: 'Acrylic on Canvas, (24"x36")', price: 10.50);
 painting.image.attach(io: File.open('./public/califa-manolete.jpg'), filename: 'califa-manolete.jpg')
 
 painting = Painting.create!(title: 'cogida-2', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/cogida-2.jpg'), filename: 'cogida-2.jpg')

 painting = Painting.create!(title: 'cogida', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/cogida.jpg'), filename: 'cogida.jpg')

 painting = Painting.create!(title: 'cow', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/cow.jpg'), filename: 'cow.jpg')

 painting = Painting.create!(title: 'cypress', description: 'Acrylic on Canvas, (24"x36")', price: 10.50);
 painting.image.attach(io: File.open('./public/cypress.jpg'), filename: 'cypress.jpg')

 painting = Painting.create!(title: 'diablo', description: 'Mixed media on Canvas, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/diablo.jpg'), filename: 'diablo.jpg')

 painting = Painting.create!(title: 'don-quijote', description: 'Acrylic on Canvas, (22"x28")', price: 10.50);
 painting.image.attach(io: File.open('./public/don-quijote.jpg'), filename: 'don-quijote.jpg')

 painting = Painting.create!(title: 'duende-1', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/duende-1.jpg'), filename: 'duende-1.jpg')

 painting = Painting.create!(title: 'duende-2', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/duende-2.jpg'), filename: 'duende-2.jpg')

 painting = Painting.create!(title: 'ella-grita-', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/ella-grita-.jpg'), filename: 'ella-grita-.jpg')

 painting = Painting.create!(title: 'embestida', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/embestida.jpg'), filename: 'embestida.jpg')

 painting = Painting.create!(title: 'eva-en-el-paraiso', description: 'Acrylic on Canvas, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/eva-en-el-paraiso.jpg'), filename: 'eva-en-el-paraiso.jpg')

 painting = Painting.create!(title: 'fair', description: 'Mixed media on Canvas, (20"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/fair.jpg'), filename: 'fair.jpg')

 painting = Painting.create!(title: 'fiesta', description: 'Acrylic on Canvas, (24"x36")', price: 10.50);
 painting.image.attach(io: File.open('./public/fiesta.jpg'), filename: 'fiesta.jpg')

 painting = Painting.create!(title: 'genesis', description: 'Acrylic Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/genesis.jpg'), filename: 'genesis.jpg')
 
 painting = Painting.create!(title: 'herido-de-muerte', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/herido-de-muerte.jpg'), filename: 'herido-de-muerte.jpg')
 
 painting = Painting.create!(title: 'hombre', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/hombre.jpg'), filename: 'hombre.jpg')
 
 painting = Painting.create!(title: 'inferno', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/inferno.jpg'), filename: 'inferno.jpg')
 
 painting = Painting.create!(title: 'la-danse', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/la-danse.jpg'), filename: 'la-danse.jpg')

 painting = Painting.create!(title: 'la-muerte', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/la-muerte.jpg'), filename: 'la-muerte.jpg')

 painting = Painting.create!(title: 'la-noche-del-duende', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/la-noche-del-duende.jpg'), filename: 'la-noche-del-duende.jpg')

 painting = Painting.create!(title: 'louis-xv', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/louis-xv.jpg'), filename: 'louis-xv.jpg')

 painting = Painting.create!(title: 'malaga', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/malaga.jpg'), filename: 'malaga.jpg')

 painting = Painting.create!(title: 'mujer-capote', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/mujer-capote.jpg'), filename: 'mujer-capote.jpg')

 painting = Painting.create!(title: 'nude-2', description: 'Mixed Media on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/nude-2.jpg'), filename: 'nude-2.jpg')

 painting = Painting.create!(title: 'nude', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/nude.jpg'), filename: 'nude.jpg')

 painting = Painting.create!(title: 'paisaje-mediterraneo', description: 'Acrylic on Paper, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/paisaje-mediterraneo.jpg'), filename: 'paisaje-mediterraneo.jpg')

 painting = Painting.create!(title: 'palazzo-2', description: 'Mixed Media on Canvas, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/palazzo-2.jpg'), filename: 'palazzo-2.jpg')

 painting = Painting.create!(title: 'palazzo', description: 'Mixed Media on Wood, (25"x38")', price: 10.50);
 painting.image.attach(io: File.open('./public/palazzo.jpg'), filename: 'palazzo.jpg')

 painting = Painting.create!(title: 'picador', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/picador.jpg'), filename: 'picador.jpg')

 painting = Painting.create!(title: 'tendido-de-sol', description: 'Acrylic on Canvas, (22"x28")', price: 10.50);
 painting.image.attach(io: File.open('./public/tendido-de-sol.jpg'), filename: 'tendido-de-sol.jpg')

 painting = Painting.create!(title: 'toro_moro_acr', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro_moro_acr.jpg'), filename: 'toro_moro_acr.jpg')

 painting = Painting.create!(title: 'toro-capote-mantilla', description: 'Acrylic on Canvas, (24"x36")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-capote-mantilla.jpg'), filename: 'toro-capote-mantilla.jpg')

 painting = Painting.create!(title: 'toro-cristiano', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-cristiano.jpg'), filename: 'toro-cristiano.jpg')

 painting = Painting.create!(title: 'toro-faraon', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-faraon.jpg'), filename: 'toro-faraon.jpg')

 painting = Painting.create!(title: 'toro-flamenco', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-flamenco.jpg'), filename: 'toro-flamenco.jpg')

 painting = Painting.create!(title: 'toro-griego', description: 'Acrylic on Canvas, (24"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-griego.jpg'), filename: 'toro-griego.jpg')

 painting = Painting.create!(title: 'toro-torero', description: 'Acrylic on Canvas, (30"x40")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-torero.jpg'), filename: 'toro-torero.jpg')

 painting = Painting.create!(title: 'toro-verde', description: 'Acrylic on Paper, (18"x24")', price: 10.50);
 painting.image.attach(io: File.open('./public/toro-verde.jpg'), filename: 'toro-verde.jpg')

 painting = Painting.create!(title: 'trasero', description: 'Acrylic on Canvas, (24"x36")', price: 10.50);
 painting.image.attach(io: File.open('./public/trasero.jpg'), filename: 'trasero.jpg')

 painting = Painting.create!(title: 'tropical', description: 'Mixed Media on Canvas, (20"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/tropical.jpg'), filename: 'tropical')

 painting = Painting.create!(title: 'usa-history', description: 'Mixed Media on Canvas, (20"x30")', price: 10.50);
 painting.image.attach(io: File.open('./public/usa-history.jpg'), filename: 'usa-history')





