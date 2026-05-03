-- HalalEats — Pakistan extras (Islamabad, Rawalpindi, Multan, Peshawar, Sialkot, Faisalabad, Quetta).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- ISLAMABAD
('Monal Restaurant', 'Pir Sohawa Road, Margalla Hills', 'Islamabad', 'Pakistan', 33.7530, 73.0570, 'Pakistani, Continental', 'full', 0, '', 1, 1, 4, 'approved'),
('Tuscany Courtyard', 'F-7 Markaz', 'Islamabad', 'Pakistan', 33.7180, 73.0510, 'Italian, Halal', 'full', 0, '', 1, 1, 4, 'approved'),
('Khiva Restaurant', 'F-6 Super Market', 'Islamabad', 'Pakistan', 33.7280, 73.0760, 'Uzbek, Pakistani', 'full', 0, '', 1, 0, 3, 'approved'),
('Andaaz Lahore', 'F-7 Markaz', 'Islamabad', 'Pakistan', 33.7185, 73.0508, 'Pakistani, Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('BBQ Tonight Islamabad', 'F-10 Markaz', 'Islamabad', 'Pakistan', 33.6900, 73.0140, 'Pakistani BBQ', 'full', 0, '', 1, 0, 3, 'approved'),
('Pind Balluchi Islamabad', 'F-11', 'Islamabad', 'Pakistan', 33.6850, 73.0300, 'Pakistani', 'full', 0, '', 1, 0, 2, 'approved'),

-- RAWALPINDI
('Savour Foods', 'The Mall, Saddar', 'Rawalpindi', 'Pakistan', 33.5970, 73.0500, 'Pulao, Pakistani', 'full', 0, '', 1, 0, 1, 'approved'),
('Usmania Restaurant', 'Murree Road', 'Rawalpindi', 'Pakistan', 33.6090, 73.0710, 'Pakistani, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Bundu Khan Rawalpindi', 'Saddar', 'Rawalpindi', 'Pakistan', 33.5980, 73.0510, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Liaquat Hall Catering', 'Liaquat Road', 'Rawalpindi', 'Pakistan', 33.5985, 73.0498, 'Traditional Pakistani', 'full', 0, '', 1, 0, 2, 'approved'),

-- MULTAN
('Bundu Khan Multan', 'Cantonment', 'Multan', 'Pakistan', 30.1980, 71.4690, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Saleem Fish', 'Outside Daulat Gate', 'Multan', 'Pakistan', 30.1972, 71.4720, 'Sajji, Fried Fish', 'full', 0, '', 1, 0, 1, 'approved'),
('Cafe Spice Multan', 'Gulgasht Colony', 'Multan', 'Pakistan', 30.2090, 71.4505, 'Pakistani, Continental', 'full', 0, '', 1, 1, 3, 'approved'),
('Hot Spot Multan', 'MDA Chowk', 'Multan', 'Pakistan', 30.1830, 71.4600, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),

-- PESHAWAR
('Charsi Tikka', 'Namak Mandi', 'Peshawar', 'Pakistan', 34.0090, 71.5705, 'Tikka, Karahi', 'full', 0, '', 1, 0, 2, 'approved'),
('Habibi Restaurant', 'University Road', 'Peshawar', 'Pakistan', 34.0050, 71.5000, 'Afghan, Pashto', 'full', 0, '', 1, 0, 2, 'approved'),
('Nisar Charsi Tikka', 'Namak Mandi', 'Peshawar', 'Pakistan', 34.0095, 71.5710, 'Tikka, BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Jan''s BBQ', 'Hayatabad', 'Peshawar', 'Pakistan', 33.9870, 71.4470, 'Pakistani, BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe Aroma Peshawar', 'University Road', 'Peshawar', 'Pakistan', 34.0040, 71.4990, 'Continental, Pakistani', 'full', 0, '', 1, 1, 3, 'approved'),

-- SIALKOT
('Pakwan Restaurant Sialkot', 'Cantonment', 'Sialkot', 'Pakistan', 32.4940, 74.5410, 'Pakistani', 'full', 0, '', 1, 0, 2, 'approved'),
('Chefs Cafe Sialkot', 'Defence Road', 'Sialkot', 'Pakistan', 32.4900, 74.5320, 'Continental, Halal', 'full', 0, '', 1, 1, 3, 'approved'),

-- FAISALABAD
('Bundu Khan Faisalabad', 'Susan Road', 'Faisalabad', 'Pakistan', 31.4220, 73.0790, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Fazal Pulao', 'Clock Tower', 'Faisalabad', 'Pakistan', 31.4180, 73.0790, 'Pakistani Pulao', 'full', 0, '', 1, 0, 1, 'approved'),
('Layers Bakery Cafe', 'Kohinoor', 'Faisalabad', 'Pakistan', 31.4170, 73.0935, 'Cafe, Bakery', 'full', 0, '', 1, 1, 2, 'approved'),

-- QUETTA
('Lehri Sajji House', 'Jinnah Road', 'Quetta', 'Pakistan', 30.1850, 67.0050, 'Balochi Sajji', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe China Quetta', 'Liaquat Bazar', 'Quetta', 'Pakistan', 30.1875, 67.0080, 'Chinese Halal, Pakistani', 'full', 0, '', 1, 1, 2, 'approved'),
('Usmania Sajji House', 'Joint Road', 'Quetta', 'Pakistan', 30.1900, 67.0010, 'Balochi Sajji', 'full', 0, '', 1, 0, 1, 'approved');
