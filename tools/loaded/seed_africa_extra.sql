-- HalalEats — Africa extras (Algiers, Khartoum, Dakar, Accra, Dar es Salaam, Mombasa, Kano, Abuja).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- ALGIERS
('El Boustane', 'Bab El Oued', 'Algiers', 'Algeria', 36.7855, 3.0570, 'Algerian, Couscous', 'full', 1, 'IANOR', 1, 0, 2, 'approved'),
('Le Tantonville', 'Place Audin', 'Algiers', 'Algeria', 36.7740, 3.0600, 'French Algerian Halal', 'partial', 0, '', 1, 1, 3, 'approved'),
('Restaurant La Casbah', 'Old Casbah', 'Algiers', 'Algeria', 36.7855, 3.0625, 'Algerian Traditional', 'full', 1, 'IANOR', 1, 1, 2, 'approved'),
('Pizza Pino Algiers', 'Hydra', 'Algiers', 'Algeria', 36.7560, 3.0405, 'Italian, Halal', 'full', 1, 'IANOR', 1, 1, 3, 'approved'),

-- KHARTOUM
('Assaha Village', 'Block 12, Khartoum 2', 'Khartoum', 'Sudan', 15.5910, 32.5360, 'Sudanese, Lebanese', 'full', 1, 'SSMO', 1, 0, 3, 'approved'),
('Solitaire Restaurant', 'Africa Road', 'Khartoum', 'Sudan', 15.5840, 32.5605, 'Sudanese, International', 'full', 1, 'SSMO', 1, 1, 3, 'approved'),
('Papa Costa', 'Riyadh District', 'Khartoum', 'Sudan', 15.5730, 32.5680, 'Italian, Halal', 'full', 1, 'SSMO', 1, 1, 3, 'approved'),

-- DAKAR
('Ndoye Bane', 'Almadies', 'Dakar', 'Senegal', 14.7470, -17.5125, 'Senegalese', 'full', 1, 'COSEC', 1, 1, 2, 'approved'),
('Chez Loutcha', 'Ouakam', 'Dakar', 'Senegal', 14.7220, -17.4960, 'Cape Verdean, Senegalese', 'full', 1, 'COSEC', 1, 1, 3, 'approved'),
('Le Lagon Dakar', 'Hann', 'Dakar', 'Senegal', 14.7270, -17.4310, 'Seafood', 'full', 1, 'COSEC', 0, 0, 4, 'approved'),

-- ACCRA
('Buka Restaurant', 'Asylum Down', 'Accra', 'Ghana', 5.5680, -0.2030, 'African, Halal Options', 'partial', 0, '', 1, 1, 3, 'approved'),
('Khana Khazana', 'East Legon', 'Accra', 'Ghana', 5.6320, -0.1620, 'Indian Halal', 'full', 1, 'GSA', 1, 1, 3, 'approved'),
('Wahab Halal Restaurant', 'Nima', 'Accra', 'Ghana', 5.5810, -0.1980, 'West African, Halal', 'full', 1, 'GSA', 1, 1, 1, 'approved'),

-- DAR ES SALAAM
('Mamboz Corner BBQ', 'Morogoro Road', 'Dar es Salaam', 'Tanzania', -6.8160, 39.2700, 'Tanzanian BBQ', 'full', 1, 'BAKWATA', 1, 0, 2, 'approved'),
('Karambezi Cafe', 'Sea Cliff Hotel', 'Dar es Salaam', 'Tanzania', -6.7270, 39.2280, 'Cafe, Halal Options', 'partial', 0, '', 1, 1, 3, 'approved'),
('Akemi Revolving Restaurant', 'PSPF Tower', 'Dar es Salaam', 'Tanzania', -6.8170, 39.2750, 'International, Halal Options', 'partial', 0, '', 1, 1, 4, 'approved'),

-- MOMBASA
('Tamarind Restaurant', 'Cement Silos Road', 'Mombasa', 'Kenya', -4.0510, 39.6705, 'Seafood, Swahili', 'full', 1, 'KEBS', 0, 0, 4, 'approved'),
('Misono Japanese', 'Mombasa Beach Hotel', 'Mombasa', 'Kenya', -4.0455, 39.7280, 'Japanese, Halal', 'full', 1, 'KEBS', 1, 0, 4, 'approved'),
('Forodhani Restaurant', 'Old Town', 'Mombasa', 'Kenya', -4.0640, 39.6740, 'Swahili Coast', 'full', 1, 'KEBS', 1, 1, 2, 'approved'),

-- KANO
('Magwa Restaurant', 'Bompai', 'Kano', 'Nigeria', 12.0270, 8.5510, 'Hausa, Suya', 'full', 1, 'NAFDAC', 1, 0, 1, 'approved'),
('Sahad Restaurant', 'Sabon Gari', 'Kano', 'Nigeria', 12.0090, 8.5290, 'Hausa, Pakistani', 'full', 1, 'NAFDAC', 1, 1, 2, 'approved'),

-- ABUJA
('Wakkis Indian Restaurant', 'Aminu Kano Crescent, Wuse 2', 'Abuja', 'Nigeria', 9.0825, 7.4690, 'Indian, Halal', 'full', 1, 'NAFDAC', 1, 1, 3, 'approved'),
('Sahad Restaurant Abuja', 'Garki', 'Abuja', 'Nigeria', 9.0335, 7.4990, 'Lebanese, Halal', 'full', 1, 'NAFDAC', 1, 1, 3, 'approved');
