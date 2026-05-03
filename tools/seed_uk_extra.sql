-- HalalEats — More UK cities (Leicester, Bradford, Glasgow, Cardiff, Leeds).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- LEICESTER
('Mem Saab', '129 Belgrave Road', 'Leicester', 'UK', 52.6450, -1.1300, 'Indian Modern', 'full', 1, 'HMC', 1, 1, 4, 'approved'),
('Bobby''s Restaurant', '154 Belgrave Road', 'Leicester', 'UK', 52.6463, -1.1305, 'Gujarati Veg', 'full', 1, 'HMC', 0, 1, 2, 'approved'),
('Halli Restaurant', '237 Welford Road', 'Leicester', 'UK', 52.6207, -1.1268, 'Indian, Mughlai', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Lilu', 'Highcross Lane', 'Leicester', 'UK', 52.6359, -1.1345, 'Indian Fine Dining', 'full', 1, 'HMC', 1, 1, 4, 'approved'),
('Akash Tandoori', 'East Park Road', 'Leicester', 'UK', 52.6360, -1.1010, 'Indian, Mughlai', 'full', 1, 'HMC', 1, 1, 2, 'approved'),

-- BRADFORD
('Mumtaz', 'Great Horton Road', 'Bradford', 'UK', 53.7800, -1.7670, 'Pakistani Kashmiri', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Akbar''s Bradford', 'Leeds Road', 'Bradford', 'UK', 53.7990, -1.7470, 'Indo-Pak', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Karachi Restaurant', 'Neal Street', 'Bradford', 'UK', 53.7960, -1.7560, 'Pakistani', 'full', 1, 'HMC', 1, 0, 1, 'approved'),
('Kashmir Curry House', 'Morley Street', 'Bradford', 'UK', 53.7920, -1.7610, 'Kashmiri, Pakistani', 'full', 1, 'HMC', 1, 0, 1, 'approved'),
('My Lahore Bradford', 'Listerhills Road', 'Bradford', 'UK', 53.7910, -1.7720, 'Pakistani', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Aakash Restaurant', 'Cleckheaton', 'Bradford', 'UK', 53.7250, -1.7180, 'Indian', 'full', 1, 'HMC', 1, 1, 3, 'approved'),

-- GLASGOW
('Mister Singh''s India', '149 Elderslie Street', 'Glasgow', 'UK', 55.8625, -4.2750, 'Indian, Pakistani', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Charcoals', '26A Renfield Street', 'Glasgow', 'UK', 55.8620, -4.2570, 'Indian, Pakistani', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Mughal Restaurant', 'Sauchiehall Street', 'Glasgow', 'UK', 55.8650, -4.2620, 'Indian', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Yadgar Kebab House', 'Calder Street, Govanhill', 'Glasgow', 'UK', 55.8410, -4.2540, 'Pakistani', 'full', 1, 'HMC', 1, 0, 2, 'approved'),

-- LEEDS
('Aagrah', 'Aberford Road, Garforth', 'Leeds', 'UK', 53.7950, -1.3823, 'Kashmiri, Pakistani', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Tharavadu', 'Mill Hill', 'Leeds', 'UK', 53.7945, -1.5470, 'Kerala, South Indian', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Hansa''s', '72-74 North Street', 'Leeds', 'UK', 53.8020, -1.5410, 'Gujarati Veg', 'full', 1, 'HMC', 0, 1, 2, 'approved'),

-- CARDIFF
('Spice Quarter', 'Mill Lane', 'Cardiff', 'UK', 51.4790, -3.1740, 'Indian, Bangladeshi', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Purple Poppadom', '185a Cowbridge Road East', 'Cardiff', 'UK', 51.4810, -3.2090, 'Indian Modern', 'full', 1, 'HMC', 1, 1, 4, 'approved'),

-- LIVERPOOL
('Mowgli Street Food', 'Bold Street', 'Liverpool', 'UK', 53.4035, -2.9820, 'Indian Street Food', 'full', 1, 'HMC', 1, 1, 2, 'approved'),
('Maray', 'Bold Street', 'Liverpool', 'UK', 53.4034, -2.9818, 'Middle Eastern, Halal', 'full', 1, 'HMC', 1, 1, 3, 'approved');
