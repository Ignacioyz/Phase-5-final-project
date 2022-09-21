# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Painting.destroy_all


 U2 = User.create!(first_name: "Ignacio", last_name: "Yz", username: 
    "Ignacio", password: Rails.application.credentials.dig(:aws, :password), email: "ignacioyz@gmail.com", admin:
 true)
 
 cart = Cart.create!()
 painting = Painting.create!(title: 'Burladero', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/burladero.jpeg'), filename: 'burladero.jpg')

 painting = Painting.create!(title: 'Africano', description: 'Acrylic on Canvas, (22"x28")', price: 450.00);
 painting.image.attach(io: File.open('./public/africano.jpg'), filename: 'africano.jpg')

 painting = Painting.create!(title: 'Banderillas-2', description: 'Acrylic on Canvas, (22"x28")', price: 450.00);
 painting.image.attach(io: File.open('./public/banderillas-2.jpg'), filename: 'banderillas-2.jpg')

 painting = Painting.create!(title: 'Banderillas', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/banderillas.jpg'), filename: 'banderillas.jpg')
 
 painting = Painting.create!(title: 'Brandy', description: 'Acrylic on Paper, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/brandy.jpg'), filename: 'brandy.jpg')
 
 painting = Painting.create!(title: 'Bull', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/bull.jpg'), filename: 'bull.jpg')
 
 painting = Painting.create!(title: 'Cactus-2', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/cactus-2.jpg'), filename: 'cactus-2.jpg')
 
 painting = Painting.create!(title: 'Cactus-Dance', description: 'Acrylic on Paper, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/cactus-dance.jpg'), filename: 'cactus-dance.jpg')
 
 painting = Painting.create!(title: 'Cactus', description: 'Acrylic on Canvas, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/cactus.jpg'), filename: 'cactus.jpg')
 
 painting = Painting.create!(title: 'Califa-Manolete', description: 'Acrylic on Canvas, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/califa-manolete.jpg'), filename: 'califa-manolete.jpg')
 
 painting = Painting.create!(title: 'Cogida-2', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/cogida-2.jpg'), filename: 'cogida-2.jpg')

 painting = Painting.create!(title: 'Cogida', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/cogida.jpg'), filename: 'cogida.jpg')

 painting = Painting.create!(title: 'Cow', description: 'Acrylic on Canvas, (24"x30")', price: 500.00);
 painting.image.attach(io: File.open('./public/cow.jpg'), filename: 'cow.jpg')

 painting = Painting.create!(title: 'Cypress', description: 'Acrylic on Canvas, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/cypress.jpg'), filename: 'cypress.jpg')

 painting = Painting.create!(title: 'Diablo', description: 'Mixed media on Canvas, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/diablo.jpg'), filename: 'diablo.jpg')

 painting = Painting.create!(title: 'Don-Quijote', description: 'Acrylic on Canvas, (22"x28")', price: 450.00);
 painting.image.attach(io: File.open('./public/don-quijote.jpg'), filename: 'don-quijote.jpg')

 painting = Painting.create!(title: 'Duende-1', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/duende-1.jpg'), filename: 'duende-1.jpg')

 painting = Painting.create!(title: 'Duende-2', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/duende-2.jpg'), filename: 'duende-2.jpg')

 painting = Painting.create!(title: 'Embestida', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/embestida.jpg'), filename: 'embestida.jpg')

 painting = Painting.create!(title: 'Eva En El Paraiso', description: 'Acrylic on Canvas, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/eva-en-el-paraiso.jpg'), filename: 'eva-en-el-paraiso.jpg')

 painting = Painting.create!(title: 'Fair', description: 'Mixed media on Canvas, (20"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/fair.jpg'), filename: 'fair.jpg')

 painting = Painting.create!(title: 'Fiesta', description: 'Acrylic on Canvas, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/fiesta.jpg'), filename: 'fiesta.jpg')

 painting = Painting.create!(title: 'Genesis', description: 'Acrylic Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/genesis.jpg'), filename: 'genesis.jpg')
 
 painting = Painting.create!(title: 'Herido-de-muerte', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/herido-de-muerte.jpg'), filename: 'herido-de-muerte.jpg')
 
 painting = Painting.create!(title: 'Hombre', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/hombre.jpg'), filename: 'hombre.jpg')
 
 painting = Painting.create!(title: 'La-Muerte', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/la-muerte.jpg'), filename: 'la-muerte.jpg')

 painting = Painting.create!(title: 'La-Noche-Del-Duende', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/la-noche-del-duende.jpg'), filename: 'la-noche-del-duende.jpg')

 painting = Painting.create!(title: 'Louis-XV', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/louis-xv.jpg'), filename: 'louis-xv.jpg')

 painting = Painting.create!(title: 'Malaga', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/malaga.jpg'), filename: 'malaga.jpg')

 painting = Painting.create!(title: 'Mujer Capote', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/mujer-capote.jpg'), filename: 'mujer-capote.jpg')

 painting = Painting.create!(title: 'Nude', description: 'Acrylic on Paper, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/nude.jpg'), filename: 'nude.jpg')

 painting = Painting.create!(title: 'Paisaje Mediterraneo', description: 'Acrylic on Paper, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/paisaje-mediterraneo.jpg'), filename: 'paisaje-mediterraneo.jpg')

 painting = Painting.create!(title: 'Palazzo 2', description: 'Mixed Media on Canvas, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/palazzo-2.jpg'), filename: 'palazzo-2.jpg')

 painting = Painting.create!(title: 'Palazzo', description: 'Mixed Media on Wood, (25"x38")', price: 500.00);
 painting.image.attach(io: File.open('./public/palazzo.jpg'), filename: 'palazzo.jpg')

 painting = Painting.create!(title: 'Picador', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/picador.jpg'), filename: 'picador.jpg')

 painting = Painting.create!(title: 'Tendido De Sol', description: 'Acrylic on Canvas, (22"x28")', price: 450.00);
 painting.image.attach(io: File.open('./public/tendido-de-sol.jpg'), filename: 'tendido-de-sol.jpg')

 painting = Painting.create!(title: 'Toro Moro Acr', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/toro_moro_acr.jpg'), filename: 'toro_moro_acr.jpg')

 painting = Painting.create!(title: 'Toro Capote Mantilla', description: 'Acrylic on Canvas, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/toro-capote-mantilla.jpg'), filename: 'toro-capote-mantilla.jpg')

 painting = Painting.create!(title: 'Toro Cristiano', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/toro-cristiano.jpg'), filename: 'toro-cristiano.jpg')

 painting = Painting.create!(title: 'Toro Faraon', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/toro-faraon.jpg'), filename: 'toro-faraon.jpg')

 painting = Painting.create!(title: 'Toro Flamenco', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/toro-flamenco.jpg'), filename: 'toro-flamenco.jpg')

 painting = Painting.create!(title: 'Toro Griego', description: 'Acrylic on Canvas, (24"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/toro-griego.jpg'), filename: 'toro-griego.jpg')

 painting = Painting.create!(title: 'Toro Torero', description: 'Acrylic on Canvas, (30"x40")', price: 600.00);
 painting.image.attach(io: File.open('./public/toro-torero.jpg'), filename: 'toro-torero.jpg')

 painting = Painting.create!(title: 'Toro Verde', description: 'Acrylic on Paper, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/toro-verde.jpg'), filename: 'toro-verde.jpg')

 painting = Painting.create!(title: 'Trasero', description: 'Acrylic on Canvas, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/trasero.jpg'), filename: 'trasero.jpg')

 painting = Painting.create!(title: 'Tropical', description: 'Mixed Media on Canvas, (20"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/tropical.jpg'), filename: 'tropical.jpg')

 painting = Painting.create!(title: 'Usa History', description: 'Mixed Media on Canvas, (20"x30")', price: 450.00);
 painting.image.attach(io: File.open('./public/usa-history.jpg'), filename: 'usa-history.jpg')

 painting = Painting.create!(title: 'Duende 3', description: 'Acrylic on Wood, (24"x36")', price: 500.00);
 painting.image.attach(io: File.open('./public/Duende3.jpg'), filename: 'Duende3.jpg')

 painting = Painting.create!(title: 'Faraona', description: 'Acrylic on Canvas, (24"x36")', price: 700.00);
 painting.image.attach(io: File.open('./public/Faraona.jpg'), filename: 'Faraona.jpg')

 painting = Painting.create!(title: 'Flamenca', description: 'Acrylic on Canvas, (24"x36")', price: 750.00);
 painting.image.attach(io: File.open('./public/Flamenca.jpg'), filename: 'Flamenca.jpg')

 painting = Painting.create!(title: 'Floyd', description: 'Acrylic on Paper, (18"x24")', price: 400.00);
 painting.image.attach(io: File.open('./public/Floyd.jpg'), filename: 'Floyd.jpg')

 painting = Painting.create!(title: 'Jan 6 #4', description: 'Mixed Media on Wood, (20"x30")', price: 550.00);
 painting.image.attach(io: File.open('./public/January_6_#4.jpg'), filename: 'January_6_#4.jpg')

 painting = Painting.create!(title: 'Lady Gaga & Santa Teresa', description: 'Acrylic on Canvas, (18"x24")', price: 500.00);
 painting.image.attach(io: File.open('./public/LadyGaga&SantaTeresa.jpg'), filename: 'LadyGaga&SantaTeresa.jpg')

 painting = Painting.create!(title: 'Lady Gaga Alejandro', description: 'Acrylic on Canvas, (18"x24")', price: 650.00);
 painting.image.attach(io: File.open('./public/LadyGagaAlejandro.jpg'), filename: 'LadyGagaAlejandro.jpg')

 painting = Painting.create!(title: 'Lady Gaga Alejandro 2', description: 'Mixed Media on Canvas, (18"x24")', price: 700.00);
 painting.image.attach(io: File.open('./public/LadyGagaAlejandro2.jpg'), filename: 'LadyGagaAlejandro2.jpg')

 painting = Painting.create!(title: 'Lady Gaga Alejandro 3', description: 'Acrylic on Canvas, (18"x24")', price: 700.00);
 painting.image.attach(io: File.open('./public/LadyGagaAlejandro3.jpg'), filename: 'LadyGagaAlejandro3.jpg')

 painting = Painting.create!(title: 'Lady Gaga Alejandro 4', description: 'Mixed Media on Canvas, (18"x24")', price: 700.00);
 painting.image.attach(io: File.open('./public/LadyGagaAlejandro4.jpg'), filename: 'LadyGagaAlejandro4.jpg')

 painting = Painting.create!(title: 'Lady Gaga Alejandro 5', description: 'Acrylic on Canvas, (18"x24")', price: 700.00);
 painting.image.attach(io: File.open('./public/LadyGagaAlejandro5.jpg'), filename: 'LadyGagaAlejandro5.jpg')

 painting = Painting.create!(title: 'Lady Gaga Alejandro 6', description: 'Acrylic on Canvas, (18"x24")', price: 600.00);
 painting.image.attach(io: File.open('./public/LadyGagaAlejandro6.jpg'), filename: 'LadyGagaAlejandro6.jpg')




