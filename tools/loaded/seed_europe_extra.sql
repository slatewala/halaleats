-- HalalEats — More Europe (Hamburg, Munich, Lyon, Marseille, Dublin, Edinburgh, Copenhagen, Oslo, Zurich, Lisbon, Athens).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- HAMBURG
('Erikan Restaurant', 'Steindamm, St. Georg', 'Hamburg', 'Germany', 53.5530, 10.0125, 'Turkish', 'full', 1, 'IZRS', 1, 0, 2, 'approved'),
('Pamukkale', 'Sternschanze', 'Hamburg', 'Germany', 53.5600, 9.9610, 'Turkish, Anatolian', 'full', 1, 'IZRS', 1, 0, 2, 'approved'),
('Sahara Restaurant', 'Steindamm', 'Hamburg', 'Germany', 53.5535, 10.0120, 'Lebanese, Arabic', 'full', 1, 'IZRS', 1, 1, 2, 'approved'),

-- MUNICH
('Restaurant Pardi', 'Goetheplatz', 'Munich', 'Germany', 48.1325, 11.5640, 'Persian', 'full', 1, 'IZRS', 1, 0, 3, 'approved'),
('Bissfest', 'Schillerstrasse', 'Munich', 'Germany', 48.1410, 11.5580, 'Turkish Doner', 'full', 1, 'IZRS', 1, 1, 1, 'approved'),
('Oasis Halal Restaurant', 'Sonnenstrasse', 'Munich', 'Germany', 48.1380, 11.5650, 'Middle Eastern', 'full', 1, 'IZRS', 1, 1, 2, 'approved'),

-- LYON
('Le Comptoir des Saveurs', 'Quai Rambaud', 'Lyon', 'France', 45.7475, 4.8175, 'Halal Lebanese', 'full', 1, 'AVS', 1, 1, 3, 'approved'),
('Le Diwan', 'Rue Pizay', 'Lyon', 'France', 45.7670, 4.8350, 'Lebanese Halal', 'full', 1, 'AVS', 1, 1, 3, 'approved'),
('Tannoureen Lyon', 'Rue de la Charite', 'Lyon', 'France', 45.7530, 4.8285, 'Lebanese', 'full', 1, 'AVS', 1, 1, 3, 'approved'),

-- MARSEILLE
('La Caravelle', 'Quai du Port', 'Marseille', 'France', 43.2960, 5.3700, 'French Mediterranean Halal', 'partial', 0, '', 0, 1, 4, 'approved'),
('Le Souk', 'Rue de la Paix Marcel Paul', 'Marseille', 'France', 43.2970, 5.3725, 'North African', 'full', 1, 'AVS', 1, 1, 3, 'approved'),
('Restaurant Etoile d''Or', 'Rue Pythias', 'Marseille', 'France', 43.2965, 5.3795, 'Lebanese', 'full', 1, 'AVS', 1, 1, 2, 'approved'),
('Halal King Marseille', 'Boulevard d''Athenes', 'Marseille', 'France', 43.3030, 5.3795, 'Halal Burgers', 'full', 1, 'AVS', 1, 0, 1, 'approved'),

-- DUBLIN
('Lebanese Restaurant Cedar Tree', 'St. Andrew Street', 'Dublin', 'Ireland', 53.3440, -6.2615, 'Lebanese', 'full', 1, 'IFI', 1, 1, 3, 'approved'),
('Govinda''s', 'Aungier Street', 'Dublin', 'Ireland', 53.3395, -6.2655, 'Indian Vegetarian', 'full', 1, 'IFI', 0, 1, 1, 'approved'),
('Konkan', 'Clanbrassil Street', 'Dublin', 'Ireland', 53.3320, -6.2740, 'Goan, Indian Halal', 'full', 1, 'IFI', 1, 1, 3, 'approved'),
('Hot Stove', 'Parnell Square', 'Dublin', 'Ireland', 53.3540, -6.2630, 'Pakistani, Indian', 'full', 1, 'IFI', 1, 1, 2, 'approved'),

-- EDINBURGH
('Khushi''s', 'Antigua Street', 'Edinburgh', 'UK', 55.9580, -3.1855, 'Indian, Pakistani', 'full', 1, 'HMC', 1, 1, 3, 'approved'),
('Mosque Kitchen', 'Nicolson Square', 'Edinburgh', 'UK', 55.9460, -3.1860, 'South Asian Halal', 'full', 1, 'HMC', 1, 1, 1, 'approved'),
('Tasnim Indian Cuisine', 'Lothian Road', 'Edinburgh', 'UK', 55.9460, -3.2050, 'Indian, Halal', 'full', 1, 'HMC', 1, 1, 3, 'approved'),

-- COPENHAGEN
('Kebabistan', 'Norrebrogade', 'Copenhagen', 'Denmark', 55.6900, 12.5550, 'Turkish, Halal', 'full', 1, 'DK Halal', 1, 1, 1, 'approved'),
('Ankara Restaurant', 'Vesterbrogade', 'Copenhagen', 'Denmark', 55.6700, 12.5550, 'Turkish', 'full', 1, 'DK Halal', 1, 1, 2, 'approved'),
('Beirut Cafe Copenhagen', 'Norrebro', 'Copenhagen', 'Denmark', 55.6920, 12.5550, 'Lebanese', 'full', 1, 'DK Halal', 1, 1, 2, 'approved'),

-- OSLO
('Punjab Tandoori', 'Gronlandsleiret', 'Oslo', 'Norway', 59.9120, 10.7660, 'Indian, Pakistani', 'full', 1, 'IRN', 1, 1, 2, 'approved'),
('Beirut Halal Oslo', 'Storgata', 'Oslo', 'Norway', 59.9165, 10.7510, 'Lebanese', 'full', 1, 'IRN', 1, 1, 2, 'approved'),
('Lahori Tikka Oslo', 'Gronland', 'Oslo', 'Norway', 59.9125, 10.7625, 'Pakistani', 'full', 1, 'IRN', 1, 0, 2, 'approved'),

-- ZURICH
('Restaurant Tibits', 'Seefeldstrasse', 'Zurich', 'Switzerland', 47.3640, 8.5520, 'Vegetarian, Halal Veg', 'full', 1, 'IZRS-CH', 0, 1, 3, 'approved'),
('Saray Restaurant', 'Langstrasse', 'Zurich', 'Switzerland', 47.3780, 8.5300, 'Turkish', 'full', 1, 'IZRS-CH', 1, 0, 2, 'approved'),

-- LISBON
('Cantinho do Aziz', 'Rua de Sao Lourenco', 'Lisbon', 'Portugal', 38.7140, -9.1320, 'Mozambican, African Halal', 'full', 1, 'CIL', 1, 1, 3, 'approved'),
('Kibab', 'Rua da Madalena', 'Lisbon', 'Portugal', 38.7115, -9.1345, 'Lebanese, Turkish', 'full', 1, 'CIL', 1, 1, 1, 'approved'),
('Indian Lounge', 'Rua dos Anjos', 'Lisbon', 'Portugal', 38.7220, -9.1350, 'Indian', 'full', 1, 'CIL', 1, 1, 2, 'approved'),

-- ATHENS
('Bairaktaris', 'Monastiraki Square', 'Athens', 'Greece', 37.9760, 23.7250, 'Greek, Halal Options', 'partial', 0, '', 0, 1, 2, 'approved'),
('Falafellas', 'Aiolou Street', 'Athens', 'Greece', 37.9785, 23.7270, 'Falafel, Mediterranean', 'full', 1, 'MUSAW', 0, 1, 1, 'approved'),
('Khan Restaurant Athens', 'Acharnon Street', 'Athens', 'Greece', 37.9970, 23.7270, 'Pakistani, Halal', 'full', 1, 'MUSAW', 1, 1, 1, 'approved');
