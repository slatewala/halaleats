-- HalalEats — Continental Europe halal seed.

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- BERLIN
('Mustafa''s Gemuse Kebab', 'Mehringdamm 32, Kreuzberg', 'Berlin', 'Germany', 52.4940, 13.3870, 'Turkish Doner', 'full', 1, 'IZRS', 1, 1, 1, 'approved'),
('Adana Grillhaus', 'Manteuffelstrasse 86', 'Berlin', 'Germany', 52.4990, 13.4170, 'Turkish, Kebabs', 'full', 1, 'IZRS', 1, 0, 2, 'approved'),
('Hasir Restaurant', 'Adalbertstrasse 10, Kreuzberg', 'Berlin', 'Germany', 52.5028, 13.4185, 'Turkish', 'full', 1, 'IZRS', 1, 1, 2, 'approved'),
('Curry 36', 'Mehringdamm 36', 'Berlin', 'Germany', 52.4945, 13.3870, 'German Currywurst, Halal', 'full', 1, 'IZRS', 1, 0, 1, 'approved'),
('Sahara Imbiss', 'Reichenberger Strasse 124', 'Berlin', 'Germany', 52.4995, 13.4220, 'Sudanese', 'full', 1, 'IZRS', 1, 1, 1, 'approved'),
('Markthalle Neun Stalls', 'Eisenbahnstrasse 42, Kreuzberg', 'Berlin', 'Germany', 52.5008, 13.4310, 'Various Halal', 'full', 1, 'IZRS', 1, 1, 2, 'approved'),

-- FRANKFURT
('Restaurant Erbil', 'Munchener Strasse 53', 'Frankfurt', 'Germany', 50.1085, 8.6680, 'Turkish, Kurdish', 'full', 1, 'IZRS', 1, 0, 2, 'approved'),
('Yufka Star', 'Kaiserstrasse 49', 'Frankfurt', 'Germany', 50.1095, 8.6695, 'Turkish Doner', 'full', 1, 'IZRS', 1, 1, 1, 'approved'),
('Diwan Restaurant', 'Mainzer Landstrasse', 'Frankfurt', 'Germany', 50.1110, 8.6650, 'Lebanese, Arabic', 'full', 1, 'IZRS', 1, 1, 3, 'approved'),

-- AMSTERDAM
('Bazar Amsterdam', 'Albert Cuypstraat 182', 'Amsterdam', 'Netherlands', 52.3548, 4.8930, 'Middle Eastern, North African', 'full', 1, 'HFFIA', 1, 1, 2, 'approved'),
('Yam Yam Trattoria', 'Frederik Hendrikstraat 90', 'Amsterdam', 'Netherlands', 52.3760, 4.8755, 'Italian, Halal Options', 'partial', 0, '', 0, 1, 3, 'approved'),
('Mantoe', 'Jan Hanzenstraat 13', 'Amsterdam', 'Netherlands', 52.3680, 4.8720, 'Afghan', 'full', 1, 'HFFIA', 1, 1, 3, 'approved'),
('Kashmir Lounge', 'Jan Pieter Heijestraat 85', 'Amsterdam', 'Netherlands', 52.3650, 4.8665, 'Indian, Pakistani', 'full', 1, 'HFFIA', 1, 1, 3, 'approved'),
('Beirut Restaurant', 'Damrak 81', 'Amsterdam', 'Netherlands', 52.3735, 4.8930, 'Lebanese', 'full', 1, 'HFFIA', 1, 1, 2, 'approved'),

-- BRUSSELS
('Notos', 'Rue de Livourne 154', 'Brussels', 'Belgium', 50.8230, 4.3680, 'Greek, Halal Options', 'partial', 0, '', 0, 1, 4, 'approved'),
('Restaurant Le Pacha', 'Boulevard Anspach', 'Brussels', 'Belgium', 50.8500, 4.3520, 'North African, Couscous', 'full', 1, 'HMC EU', 1, 1, 3, 'approved'),
('Mozaika', 'Rue Vifquin', 'Brussels', 'Belgium', 50.8650, 4.3650, 'Mediterranean, Halal', 'full', 1, 'HMC EU', 1, 1, 3, 'approved'),
('Saj Express', 'Avenue de la Couronne', 'Brussels', 'Belgium', 50.8260, 4.3835, 'Lebanese', 'full', 1, 'HMC EU', 1, 1, 1, 'approved'),

-- VIENNA
('Tewa', 'Karmelitermarkt', 'Vienna', 'Austria', 48.2196, 16.3795, 'Mediterranean, Halal', 'full', 1, 'IGGO', 1, 1, 2, 'approved'),
('Maschu Maschu', 'Rabensteig 8', 'Vienna', 'Austria', 48.2105, 16.3760, 'Israeli/Lebanese, Halal', 'full', 1, 'IGGO', 1, 1, 2, 'approved'),
('Der Wiener Deewan', 'Liechtensteinstrasse 10', 'Vienna', 'Austria', 48.2160, 16.3590, 'Pakistani Buffet', 'full', 1, 'IGGO', 1, 1, 2, 'approved'),
('Naschmarkt Stalls', 'Naschmarkt', 'Vienna', 'Austria', 48.1985, 16.3635, 'Turkish, Middle Eastern', 'full', 1, 'IGGO', 1, 1, 2, 'approved'),

-- STOCKHOLM
('Sundbyberg Pizzeria', 'Sundbyberg', 'Stockholm', 'Sweden', 59.3608, 17.9710, 'Halal Pizza, Kebab', 'full', 1, 'SIS', 1, 1, 1, 'approved'),
('Tehran Grill', 'Hornsgatan', 'Stockholm', 'Sweden', 59.3170, 18.0510, 'Persian, Iranian', 'full', 1, 'SIS', 1, 0, 2, 'approved'),
('Bistro Berns', 'Naglerns torg', 'Stockholm', 'Sweden', 59.3320, 18.0710, 'Modern, Halal Options', 'partial', 0, '', 1, 1, 4, 'approved'),

-- MADRID
('Restaurant Al Mounia', 'Calle de Recoletos 5', 'Madrid', 'Spain', 40.4220, -3.6925, 'Moroccan, Andalusian', 'full', 1, 'IHIB', 1, 1, 4, 'approved'),
('Casa Mono', 'Calle Tutor', 'Madrid', 'Spain', 40.4310, -3.7180, 'Spanish, Halal Options', 'partial', 0, '', 1, 1, 3, 'approved'),
('Adrish', 'Calle de San Bernardo', 'Madrid', 'Spain', 40.4250, -3.7065, 'Pakistani, Indian', 'full', 1, 'IHIB', 1, 1, 2, 'approved'),
('Restaurant Akhdar', 'Lavapies', 'Madrid', 'Spain', 40.4090, -3.7020, 'North African, Halal', 'full', 1, 'IHIB', 1, 1, 2, 'approved'),

-- BARCELONA
('Restaurante Adda', 'Carrer de Hospital, El Raval', 'Barcelona', 'Spain', 41.3795, 2.1697, 'Indian, Pakistani', 'full', 1, 'IHIB', 1, 1, 2, 'approved'),
('Rasoi Indian Restaurant', 'Carrer del Carme', 'Barcelona', 'Spain', 41.3812, 2.1700, 'Indian', 'full', 1, 'IHIB', 1, 1, 2, 'approved'),
('Fida Restaurant', 'Carrer de Sant Antoni Abat', 'Barcelona', 'Spain', 41.3795, 2.1660, 'Halal Tapas, Mediterranean', 'full', 1, 'IHIB', 1, 1, 3, 'approved'),

-- ROME
('La Carbonara', 'Via Panisperna', 'Rome', 'Italy', 41.8950, 12.4920, 'Italian, Halal Options', 'partial', 0, '', 0, 1, 3, 'approved'),
('Maharajah', 'Via dei Serpenti 124', 'Rome', 'Italy', 41.8945, 12.4933, 'Indian, Pakistani', 'full', 1, 'COREIS', 1, 1, 3, 'approved'),
('Hostaria Romanesca', 'Piazza Campo de'' Fiori', 'Rome', 'Italy', 41.8957, 12.4720, 'Italian, Halal', 'full', 1, 'COREIS', 1, 1, 4, 'approved'),
('Shawarma Station', 'Via Conte Verde', 'Rome', 'Italy', 41.8960, 12.5050, 'Middle Eastern, Shawarma', 'full', 1, 'COREIS', 1, 1, 1, 'approved'),

-- MILAN
('Cucina dei Frigoriferi Milanesi', 'Via Piranesi', 'Milan', 'Italy', 45.4720, 9.2255, 'Modern Italian, Halal Options', 'partial', 0, '', 0, 1, 4, 'approved'),
('Risto Pizza Halal', 'Via Padova', 'Milan', 'Italy', 45.4985, 9.2272, 'Pizza, Halal', 'full', 1, 'COREIS', 1, 1, 2, 'approved'),
('Mexico City Halal', 'Via Carlo Boncompagni', 'Milan', 'Italy', 45.4930, 9.2095, 'Mexican, Halal', 'full', 1, 'COREIS', 1, 1, 2, 'approved'),

-- GENEVA
('Manora', 'Rue de Cornavin', 'Geneva', 'Switzerland', 46.2103, 6.1430, 'Buffet, Halal Section', 'partial', 0, '', 0, 1, 2, 'approved'),
('Halal Burger Geneva', 'Rue de Berne', 'Geneva', 'Switzerland', 46.2108, 6.1438, 'Halal Burgers', 'full', 1, 'IHEU', 1, 1, 2, 'approved'),

-- MOSCOW
('Chaihana No 1', 'Tverskaya Street / multiple', 'Moscow', 'Russia', 55.7625, 37.6068, 'Uzbek, Central Asian', 'full', 1, 'CRMR', 1, 1, 3, 'approved'),
('Ragu', 'Bolshaya Gruzinskaya', 'Moscow', 'Russia', 55.7720, 37.5832, 'Italian, Halal', 'full', 1, 'CRMR', 1, 1, 4, 'approved'),
('Hookah Place Halal', 'Pyatnitskaya', 'Moscow', 'Russia', 55.7430, 37.6260, 'Lounge, Arabic', 'full', 1, 'CRMR', 1, 1, 3, 'approved');
