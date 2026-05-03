-- HalalEats — Africa halal seed (Egypt, Morocco, Tunisia, Nigeria, Kenya, Ethiopia).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- CAIRO
('Abou Tarek', 'Champollion Street, Downtown', 'Cairo', 'Egypt', 30.0500, 31.2400, 'Koshari, Egyptian', 'full', 1, 'NFSA', 0, 1, 1, 'approved'),
('Felfela', 'Talaat Harb Street, Downtown', 'Cairo', 'Egypt', 30.0470, 31.2420, 'Egyptian', 'full', 1, 'NFSA', 1, 1, 2, 'approved'),
('Naguib Mahfouz Cafe', 'Khan El Khalili', 'Cairo', 'Egypt', 30.0475, 31.2625, 'Egyptian', 'full', 1, 'NFSA', 1, 1, 3, 'approved'),
('Sequoia', 'Zamalek', 'Cairo', 'Egypt', 30.0750, 31.2230, 'Mediterranean, Egyptian', 'full', 1, 'NFSA', 1, 1, 4, 'approved'),
('Abou El Sid', 'Zamalek / multiple', 'Cairo', 'Egypt', 30.0625, 31.2200, 'Egyptian', 'full', 1, 'NFSA', 1, 1, 3, 'approved'),
('Andrea Mariouteya', 'Pyramids Road', 'Cairo', 'Egypt', 29.9850, 31.1490, 'Egyptian Grill', 'full', 1, 'NFSA', 1, 0, 3, 'approved'),
('Kazaz', 'Mohandessin', 'Cairo', 'Egypt', 30.0550, 31.2010, 'Lebanese, Arabic', 'full', 1, 'NFSA', 1, 1, 3, 'approved'),
('Gad Restaurant', 'Tahrir / multiple', 'Cairo', 'Egypt', 30.0444, 31.2357, 'Egyptian Fast Food', 'full', 1, 'NFSA', 1, 1, 1, 'approved'),

-- ALEXANDRIA
('Mohamed Ahmed', 'Shakour Street', 'Alexandria', 'Egypt', 31.2000, 29.9050, 'Foul, Falafel, Egyptian', 'full', 1, 'NFSA', 0, 1, 1, 'approved'),
('Kadoura', 'Bahary, Anfoushi', 'Alexandria', 'Egypt', 31.2080, 29.8770, 'Seafood', 'full', 1, 'NFSA', 0, 0, 3, 'approved'),
('Abou Ashraf', 'Souq area', 'Alexandria', 'Egypt', 31.2055, 29.8890, 'Seafood', 'full', 1, 'NFSA', 0, 0, 2, 'approved'),
('Balbaa Village', 'Smouha', 'Alexandria', 'Egypt', 31.2100, 29.9510, 'Egyptian Grill', 'full', 1, 'NFSA', 1, 0, 3, 'approved'),

-- CASABLANCA
('Rick''s Cafe', 'Boulevard Sour Jdid', 'Casablanca', 'Morocco', 33.6010, -7.6190, 'Moroccan, International', 'full', 1, 'IMANOR', 1, 1, 4, 'approved'),
('Cafe Maure', 'Old Medina', 'Casablanca', 'Morocco', 33.5947, -7.6133, 'Moroccan', 'full', 1, 'IMANOR', 1, 1, 2, 'approved'),
('Le Cabestan', 'Phare El Hank', 'Casablanca', 'Morocco', 33.5995, -7.6700, 'French, Moroccan', 'full', 1, 'IMANOR', 1, 1, 5, 'approved'),
('Al Mounia', '95 Rue du Prince Moulay Abdallah', 'Casablanca', 'Morocco', 33.5900, -7.6200, 'Moroccan Traditional', 'full', 1, 'IMANOR', 1, 1, 3, 'approved'),
('Iloli', 'Rue de Foucauld', 'Casablanca', 'Morocco', 33.5895, -7.6175, 'Moroccan Modern', 'full', 1, 'IMANOR', 1, 1, 4, 'approved'),

-- MARRAKECH
('Cafe Clock', 'Derb Chtouka, Kasbah', 'Marrakech', 'Morocco', 31.6189, -7.9890, 'Moroccan, Camel Burger', 'full', 1, 'IMANOR', 1, 1, 2, 'approved'),
('Nomad', 'Rahba Lakdima', 'Marrakech', 'Morocco', 31.6320, -7.9869, 'Moroccan Modern', 'full', 1, 'IMANOR', 1, 1, 4, 'approved'),
('Le Jardin', 'Souk Sidi Abdelaziz', 'Marrakech', 'Morocco', 31.6305, -7.9883, 'Moroccan, Mediterranean', 'full', 1, 'IMANOR', 1, 1, 3, 'approved'),
('Cafe Arabe', 'Mouassine', 'Marrakech', 'Morocco', 31.6310, -7.9897, 'Moroccan, Italian', 'full', 1, 'IMANOR', 1, 1, 4, 'approved'),
('La Maison Arabe', 'Bab Doukkala', 'Marrakech', 'Morocco', 31.6363, -7.9928, 'Moroccan Fine Dining', 'full', 1, 'IMANOR', 1, 1, 5, 'approved'),
('Jemaa el-Fna Stalls', 'Jemaa el-Fna Square', 'Marrakech', 'Morocco', 31.6258, -7.9892, 'Moroccan Street Food', 'full', 1, 'IMANOR', 1, 0, 1, 'approved'),

-- FES
('Cafe Clock Fes', 'Talaa Kbira', 'Fes', 'Morocco', 34.0640, -4.9728, 'Moroccan, Cafe', 'full', 1, 'IMANOR', 1, 1, 2, 'approved'),
('The Ruined Garden', 'Derb Idrissy', 'Fes', 'Morocco', 34.0630, -4.9725, 'Moroccan Modern', 'full', 1, 'IMANOR', 1, 1, 3, 'approved'),
('Dar Roumana', 'Derb el Amer, Bab el Guissa', 'Fes', 'Morocco', 34.0700, -4.9680, 'Moroccan, French', 'full', 1, 'IMANOR', 1, 1, 4, 'approved'),

-- TUNIS
('Dar El Jeld', '5-10 Rue Dar El Jeld, Medina', 'Tunis', 'Tunisia', 36.8000, 10.1700, 'Tunisian Traditional', 'full', 1, 'INNORPI', 1, 1, 4, 'approved'),
('Fondouk El Attarine', 'Souk El Attarine, Medina', 'Tunis', 'Tunisia', 36.7990, 10.1715, 'Tunisian', 'full', 1, 'INNORPI', 1, 1, 3, 'approved'),
('Le Capitole', 'La Marsa', 'Tunis', 'Tunisia', 36.8780, 10.3220, 'Tunisian, Mediterranean', 'full', 1, 'INNORPI', 1, 1, 3, 'approved'),

-- LAGOS
('Yellow Chilli', 'Victoria Island', 'Lagos', 'Nigeria', 6.4290, 3.4225, 'Nigerian, Halal Options', 'partial', 0, '', 1, 1, 3, 'approved'),
('Sky Restaurant', 'Eko Hotel, Victoria Island', 'Lagos', 'Nigeria', 6.4310, 3.4250, 'International', 'partial', 0, '', 1, 1, 5, 'approved'),
('Tantalizers', 'Multiple', 'Lagos', 'Nigeria', 6.5244, 3.3792, 'Nigerian Fast Food', 'full', 1, 'NAFDAC', 1, 0, 1, 'approved'),
('Kebabish Lagos', 'Lekki Phase 1', 'Lagos', 'Nigeria', 6.4360, 3.4720, 'Pakistani, Indian', 'full', 1, 'NAFDAC', 1, 1, 3, 'approved'),

-- NAIROBI
('Pampa Churrascaria', 'Riverside Drive', 'Nairobi', 'Kenya', -1.2700, 36.8030, 'Brazilian, Halal', 'full', 1, 'KEBS', 1, 0, 4, 'approved'),
('Ranalo Foods', 'Kimathi Street', 'Nairobi', 'Kenya', -1.2842, 36.8240, 'Kenyan, Nyama Choma', 'full', 1, 'KEBS', 1, 0, 2, 'approved'),
('Java House', 'Multiple', 'Nairobi', 'Kenya', -1.2921, 36.8219, 'Cafe, International', 'full', 1, 'KEBS', 1, 1, 2, 'approved'),
('Habesha Restaurant', 'Westlands', 'Nairobi', 'Kenya', -1.2680, 36.8050, 'Ethiopian, Halal', 'full', 1, 'KEBS', 1, 1, 2, 'approved'),
('Diamond Plaza Food Court', 'Parklands', 'Nairobi', 'Kenya', -1.2620, 36.8170, 'Indian, Pakistani', 'full', 1, 'KEBS', 1, 1, 2, 'approved'),

-- ADDIS ABABA
('Yod Abyssinia', 'Bole Road', 'Addis Ababa', 'Ethiopia', 9.0090, 38.7900, 'Ethiopian, Halal Options', 'partial', 0, '', 1, 1, 2, 'approved'),
('Habesha 2000', 'Bole', 'Addis Ababa', 'Ethiopia', 9.0080, 38.7895, 'Ethiopian Traditional', 'partial', 0, '', 1, 1, 2, 'approved');
