-- HalalEats — UK + Europe halal restaurants seed (London, Birmingham, Manchester, Paris).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- LONDON
('Mughal-e-Azam', 'Whitechapel', 'London', 'UK', 51.5174, -0.0598, 'Mughlai', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Tayyabs', '83-89 Fieldgate Street, Whitechapel', 'London', 'UK', 51.5163, -0.0635, 'Punjabi, Pakistani', 'full', 1, 'HMC', 1, 0, 2, 'approved'),
('Lahore Kebab House', '2-10 Umberston Street, Whitechapel', 'London', 'UK', 51.5160, -0.0635, 'Pakistani, Punjabi', 'full', 1, 'HMC', 1, 0, 2, 'approved'),
('Needoo Grill', '87 New Road, Whitechapel', 'London', 'UK', 51.5170, -0.0610, 'Punjabi, Pakistani', 'full', 1, 'HMC', 1, 0, 2, 'approved'),
('Mirch Masala', 'Norbury / Tooting / multiple', 'London', 'UK', 51.4290, -0.1252, 'Indian, Punjabi', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Aladin Restaurant', '132 Brick Lane', 'London', 'UK', 51.5210, -0.0710, 'Bangladeshi, Indian', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Sufra', 'Wood Green', 'London', 'UK', 51.5972, -0.1107, 'Turkish', 'full', 1, 'HMC', 1, 0, 2, 'approved'),
('Comptoir Libanais', 'Wigmore Street / multiple', 'London', 'UK', 51.5151, -0.1505, 'Lebanese', 'full', 1, 'HFA', 1, 1, 2, 'approved'),
('Haz Restaurant', 'Plantation Place, City', 'London', 'UK', 51.5118, -0.0855, 'Turkish', 'full', 1, 'HFA', 1, 1, 3, 'approved'),
('Mangal 1 Ocakbasi', '10 Arcola Street, Dalston', 'London', 'UK', 51.5495, -0.0750, 'Turkish', 'full', 1, 'HFA', 1, 0, 2, 'approved'),
('Punjab Restaurant', '80 Neal Street, Covent Garden', 'London', 'UK', 51.5145, -0.1255, 'North Indian, Punjabi', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Chai Naasto', 'Hammersmith / multiple', 'London', 'UK', 51.4925, -0.2240, 'Indian Street Food', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Roti King', 'Doric Way, Euston', 'London', 'UK', 51.5290, -0.1335, 'Malaysian', 'full', 1, 'HFA', 1, 1, 2, 'approved'),
('Meat & Shake', 'Tooting / multiple', 'London', 'UK', 51.4267, -0.1654, 'Burgers, Steaks', 'full', 1, 'HMC', 1, 0, 2, 'approved'),
('CoCoTang', 'Whitechapel', 'London', 'UK', 51.5180, -0.0620, 'Asian Fusion', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Beirut Grill', 'Edgware Road', 'London', 'UK', 51.5193, -0.1640, 'Lebanese', 'full', 1, 'HFA', 1, 1, 2, 'approved'),
('Maroush', 'Edgware Road', 'London', 'UK', 51.5190, -0.1635, 'Lebanese', 'full', 1, 'HFA', 1, 1, 3, 'approved'),
('Damas Gate', 'Edgware Road', 'London', 'UK', 51.5197, -0.1638, 'Syrian, Lebanese', 'full', 1, 'HFA', 1, 1, 2, 'approved'),

-- BIRMINGHAM
('Adil''s Restaurant', '148-150 Stoney Lane, Sparkbrook', 'Birmingham', 'UK', 52.4634, -1.8728, 'Pakistani, Balti', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Akbar''s', 'Brindleyplace', 'Birmingham', 'UK', 52.4790, -1.9120, 'Indian, Pakistani', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Lasan', 'James Street, St Pauls Square', 'Birmingham', 'UK', 52.4870, -1.9046, 'Indian, Modern', 'full', 1, 'HMC', 1, 1, 4, 'approved'),
('Asha''s', 'Newhall Street', 'Birmingham', 'UK', 52.4830, -1.9000, 'Indian, North Indian', 'full', 1, 'HMC', 1, 1, 4, 'approved'),
('Imran''s', '264-266 Ladypool Road, Sparkbrook', 'Birmingham', 'UK', 52.4666, -1.8809, 'Pakistani, Balti', 'full', 1, 'HMC', 1, 0, 2, 'approved'),
('Sweet Centre', '76 Ladypool Road', 'Birmingham', 'UK', 52.4670, -1.8810, 'Indo-Pak Sweets', 'full', 1, 'HMC', 0, 1, 1, 'approved'),
('Ziafat', 'Stratford Road, Sparkhill', 'Birmingham', 'UK', 52.4515, -1.8617, 'Indo-Pak, Buffet', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Pushkar', 'Broad Street', 'Birmingham', 'UK', 52.4775, -1.9086, 'Punjabi, Modern Indian', 'full', 1, 'HMC', 1, 1, 4, 'approved'),
('Itihaas', '18 Fleet Street', 'Birmingham', 'UK', 52.4812, -1.9063, 'Indian Fine Dining', 'full', 1, 'HMC', 1, 1, 4, 'approved'),

-- MANCHESTER
('Akbar''s Manchester', 'Liverpool Road, Castlefield', 'Manchester', 'UK', 53.4750, -2.2520, 'Indo-Pak', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('My Lahore', 'Wilmslow Road, Rusholme', 'Manchester', 'UK', 53.4555, -2.2280, 'Pakistani', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Sanam Sweet House', 'Wilmslow Road, Rusholme', 'Manchester', 'UK', 53.4548, -2.2278, 'Pakistani, Sweets', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Mughli', '30 Wilmslow Road, Rusholme', 'Manchester', 'UK', 53.4555, -2.2275, 'Indo-Pak Charcoal Pit', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('This & That', 'Soap Street, Northern Quarter', 'Manchester', 'UK', 53.4854, -2.2380, 'Pakistani Curry', 'full', 1, 'HMC', 1, 1, 1, 'approved'),

-- PARIS
('Le 144 Petrossian', 'Latin Quarter / multiple halal versions', 'Paris', 'France', 48.8580, 2.3120, 'French, Halal', 'partial', 0, '', 0, 0, 4, 'approved'),
('Au Bon Coin', 'Belleville', 'Paris', 'France', 48.8721, 2.3766, 'French, Halal', 'full', 1, 'AVS', 1, 0, 2, 'approved'),
('Chez Marianne', 'Marais', 'Paris', 'France', 48.8580, 2.3580, 'Mediterranean, Jewish', 'partial', 0, '', 0, 1, 3, 'approved'),
('Chez Mamane', 'Belleville', 'Paris', 'France', 48.8716, 2.3770, 'North African, Couscous', 'full', 1, 'AVS', 1, 1, 2, 'approved'),
('Pizza Cosy', 'Aulnay-sous-Bois', 'Paris', 'France', 48.9344, 2.4934, 'Pizza, Halal', 'full', 1, 'AVS', 1, 1, 2, 'approved'),
('Le Pre Verre', '8 Rue Thenard', 'Paris', 'France', 48.8492, 2.3469, 'French, Halal Options', 'partial', 0, '', 0, 1, 3, 'approved'),
('Royal Falafel', 'Rue des Rosiers, Marais', 'Paris', 'France', 48.8576, 2.3585, 'Falafel, Mediterranean', 'full', 1, 'AVS', 0, 1, 1, 'approved');
