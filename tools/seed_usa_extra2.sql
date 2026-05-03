-- HalalEats — More USA cities (Philadelphia, Miami, Phoenix, San Diego, Orlando, Denver, Portland, Tampa).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- PHILADELPHIA
('Kabobeesh Restaurant', '4201 Chestnut Street', 'Philadelphia', 'USA', 39.9530, -75.2090, 'Pakistani BBQ', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Aladdin Restaurant', 'Walnut Street', 'Philadelphia', 'USA', 39.9520, -75.1665, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Maoz Vegetarian', 'Sansom Street', 'Philadelphia', 'USA', 39.9505, -75.1640, 'Mediterranean, Falafel', 'full', 1, 'IFANCA', 0, 1, 1, 'approved'),
('Karachi Halal Restaurant', 'Walnut Street', 'Philadelphia', 'USA', 39.9525, -75.1655, 'Pakistani', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Kismet Halal Cafe', 'University City', 'Philadelphia', 'USA', 39.9528, -75.1980, 'Mediterranean, Halal Cart', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),

-- MIAMI
('Halal Guys Miami', 'Brickell', 'Miami', 'USA', 25.7625, -80.1942, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Pita Plus', 'Aventura', 'Miami', 'USA', 25.9560, -80.1450, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Sahara Lebanese', 'Sunny Isles Beach', 'Miami', 'USA', 25.9420, -80.1230, 'Lebanese', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Petra Restaurant Miami', 'Little Havana', 'Miami', 'USA', 25.7665, -80.2380, 'Middle Eastern', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- PHOENIX
('Haji-Baba', 'Apache Boulevard, Tempe', 'Phoenix', 'USA', 33.4148, -111.9217, 'Middle Eastern Market & Cafe', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Persian Garden Cafe', 'Scottsdale Road', 'Phoenix', 'USA', 33.4942, -111.9261, 'Persian', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Pita Jungle', 'Multiple locations', 'Phoenix', 'USA', 33.4484, -112.0740, 'Mediterranean', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Pomegranate Cafe', 'Phoenix', 'Phoenix', 'USA', 33.5530, -112.0735, 'Mediterranean Cafe', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- SAN DIEGO
('Aladdin Mediterranean Cafe', 'Convoy Street', 'San Diego', 'USA', 32.8155, -117.1525, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Mama''s Bakery & Lebanese Deli', 'University Avenue', 'San Diego', 'USA', 32.7475, -117.1265, 'Lebanese', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Curry Junction', 'Black Mountain Road', 'San Diego', 'USA', 32.9650, -117.1280, 'Indian, Pakistani', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Punjabi Tandoor', 'Miramar Road', 'San Diego', 'USA', 32.8820, -117.1490, 'Punjabi', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- ORLANDO
('Halal Cart Orlando', 'International Drive', 'Orlando', 'USA', 28.4310, -81.4690, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Bosphorous Turkish Cuisine', 'Park Avenue, Winter Park', 'Orlando', 'USA', 28.5990, -81.3530, 'Turkish', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Anatolia Mediterranean Bistro', 'Conroy Road', 'Orlando', 'USA', 28.4945, -81.4435, 'Turkish, Mediterranean', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- DENVER
('Mediterranean Health Cafe', 'East Hampden', 'Denver', 'USA', 39.6520, -104.9170, 'Mediterranean', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('India''s Pearl', 'East Colfax', 'Denver', 'USA', 39.7400, -104.9580, 'Indian', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Yafa Cafe', 'East Colfax Avenue', 'Denver', 'USA', 39.7405, -104.9575, 'Palestinian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- PORTLAND
('Aybla Mediterranean Grill', 'SW Market Street', 'Portland', 'USA', 45.5118, -122.6850, 'Mediterranean Halal Cart', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('DarSalam', 'NE Alberta Street', 'Portland', 'USA', 45.5590, -122.6420, 'Iraqi', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Karam Lebanese Cuisine', 'SW Salmon Street', 'Portland', 'USA', 45.5180, -122.6770, 'Lebanese', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),

-- TAMPA
('Casbah Cafe', 'South Howard Avenue', 'Tampa', 'USA', 27.9395, -82.4830, 'Mediterranean', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Petra Restaurant Tampa', 'Fowler Avenue', 'Tampa', 'USA', 28.0560, -82.4150, 'Middle Eastern', 'full', 1, 'IFANCA', 1, 1, 2, 'approved');
