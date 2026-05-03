-- HalalEats — Latin America halal seed (Mexico City, Sao Paulo, Buenos Aires, Bogota, Santiago).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- MEXICO CITY
('Al Andalus Restaurante', 'Mesones, Centro', 'Mexico City', 'Mexico', 19.4290, -99.1330, 'Lebanese, Mediterranean', 'full', 1, 'CIM', 1, 1, 3, 'approved'),
('Hummus Mediterraneo', 'Polanco', 'Mexico City', 'Mexico', 19.4330, -99.1925, 'Mediterranean, Halal', 'full', 1, 'CIM', 1, 1, 3, 'approved'),
('Beirut Restaurant CDMX', 'Roma Norte', 'Mexico City', 'Mexico', 19.4200, -99.1620, 'Lebanese', 'full', 1, 'CIM', 1, 1, 3, 'approved'),

-- SAO PAULO
('Sahara Restaurante', 'Bela Vista', 'Sao Paulo', 'Brazil', -23.5615, -46.6505, 'Lebanese, Syrian', 'full', 1, 'CDIAL', 1, 1, 3, 'approved'),
('Khan El Khalili', 'Vila Madalena', 'Sao Paulo', 'Brazil', -23.5455, -46.6890, 'Egyptian, Arabic', 'full', 1, 'CDIAL', 1, 1, 3, 'approved'),
('Empório Tunisino', 'Pinheiros', 'Sao Paulo', 'Brazil', -23.5650, -46.6930, 'Tunisian, North African', 'full', 1, 'CDIAL', 1, 1, 3, 'approved'),
('Almanara', 'Higienopolis', 'Sao Paulo', 'Brazil', -23.5430, -46.6580, 'Lebanese (Brazilian Halal Chain)', 'full', 1, 'CDIAL', 1, 1, 3, 'approved'),

-- BUENOS AIRES
('El Manto', 'Palermo', 'Buenos Aires', 'Argentina', -34.5810, -58.4250, 'Armenian, Middle Eastern', 'full', 1, 'OIM', 1, 1, 3, 'approved'),
('Sarkis', 'Villa Crespo', 'Buenos Aires', 'Argentina', -34.5990, -58.4480, 'Armenian, Mediterranean Halal', 'full', 1, 'OIM', 1, 1, 2, 'approved'),
('Restaurant Halal BA', 'Once', 'Buenos Aires', 'Argentina', -34.6090, -58.4000, 'Lebanese, Halal', 'full', 1, 'OIM', 1, 1, 2, 'approved'),

-- BOGOTA
('Ali Baba Bogota', 'Zona Rosa', 'Bogota', 'Colombia', 4.6680, -74.0540, 'Lebanese', 'full', 1, 'CCM', 1, 1, 3, 'approved'),
('Persia Restaurant', 'Chapinero', 'Bogota', 'Colombia', 4.6510, -74.0625, 'Persian, Halal', 'full', 1, 'CCM', 1, 1, 3, 'approved'),

-- SANTIAGO
('Beirut Restaurant Santiago', 'Providencia', 'Santiago', 'Chile', -33.4250, -70.6055, 'Lebanese', 'full', 1, 'CIS', 1, 1, 3, 'approved'),
('Don Tito', 'Bellavista', 'Santiago', 'Chile', -33.4280, -70.6390, 'Mediterranean Halal', 'full', 1, 'CIS', 1, 1, 3, 'approved');
