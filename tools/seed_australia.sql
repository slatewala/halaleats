-- HalalEats — Australia + South Africa halal restaurants seed.

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- SYDNEY
('Aladdin on Lakemba', 'Haldon Street, Lakemba', 'Sydney', 'Australia', -33.9210, 151.0780, 'Lebanese, Middle Eastern', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Jasmin Lebanese', 'Haldon Street, Lakemba', 'Sydney', 'Australia', -33.9213, 151.0782, 'Lebanese', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Al Aseel', 'Greenacre / multiple', 'Sydney', 'Australia', -33.9047, 151.0590, 'Lebanese, Mediterranean', 'full', 1, 'AFIC', 1, 1, 3, 'approved'),
('Lakemba Sweets', 'Haldon Street, Lakemba', 'Sydney', 'Australia', -33.9215, 151.0780, 'Arabic Sweets, Knafeh', 'full', 1, 'AFIC', 0, 1, 1, 'approved'),
('Summerland Restaurant', 'Auburn', 'Sydney', 'Australia', -33.8487, 151.0327, 'Lebanese, Mediterranean', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Al Madina Pizza', 'Auburn', 'Sydney', 'Australia', -33.8490, 151.0330, 'Lebanese Pizza, Manakish', 'full', 1, 'AFIC', 1, 1, 1, 'approved'),
('Faheems Fast Food', 'Enmore Road, Enmore', 'Sydney', 'Australia', -33.8967, 151.1730, 'Pakistani, Indian', 'full', 1, 'AFIC', 1, 1, 1, 'approved'),
('Punchbowl Bakery', 'Punchbowl', 'Sydney', 'Australia', -33.9275, 151.0540, 'Lebanese Bakery', 'full', 1, 'AFIC', 0, 1, 1, 'approved'),

-- MELBOURNE
('1001 Nights', 'Coburg / multiple', 'Melbourne', 'Australia', -37.7430, 144.9650, 'Lebanese', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Rumi Restaurant', '116 Lygon Street, Brunswick East', 'Melbourne', 'Australia', -37.7720, 144.9700, 'Middle Eastern, Modern', 'full', 1, 'AFIC', 1, 1, 4, 'approved'),
('A1 Bakery', 'Sydney Road, Brunswick', 'Melbourne', 'Australia', -37.7672, 144.9610, 'Lebanese Bakery', 'full', 1, 'AFIC', 0, 1, 1, 'approved'),
('Eat Drink Persian', 'Camberwell', 'Melbourne', 'Australia', -37.8264, 145.0584, 'Persian', 'full', 1, 'AFIC', 1, 1, 3, 'approved'),
('Lazeez Restaurant', 'Dandenong', 'Melbourne', 'Australia', -37.9870, 145.2120, 'Pakistani, Indian', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),

-- CAPE TOWN
('Mariam''s Kitchen', 'Strand Street', 'Cape Town', 'South Africa', -33.9220, 18.4220, 'Cape Malay', 'full', 1, 'MJC', 1, 0, 2, 'approved'),
('Bo-Kaap Kombuis', 'Wale Street, Bo-Kaap', 'Cape Town', 'South Africa', -33.9176, 18.4137, 'Cape Malay, Indonesian', 'full', 1, 'MJC', 1, 0, 3, 'approved'),
('Biesmiellah Restaurant', 'Wale Street, Bo-Kaap', 'Cape Town', 'South Africa', -33.9182, 18.4131, 'Cape Malay', 'full', 1, 'MJC', 1, 0, 2, 'approved'),
('Atlas Trading', 'Wale Street, Bo-Kaap', 'Cape Town', 'South Africa', -33.9180, 18.4135, 'Spices, Snacks', 'full', 1, 'MJC', 0, 1, 1, 'approved'),

-- JOHANNESBURG
('Akhalwaya & Sons', 'Fordsburg', 'Johannesburg', 'South Africa', -26.2078, 28.0269, 'Indian, Mughlai', 'full', 1, 'NIHT', 1, 1, 2, 'approved'),
('Patel''s', 'Fordsburg', 'Johannesburg', 'South Africa', -26.2080, 28.0270, 'Indian, Bunny Chow', 'full', 1, 'NIHT', 1, 1, 1, 'approved'),
('Capello''s', 'Mall of Africa', 'Johannesburg', 'South Africa', -26.0153, 28.1077, 'Italian, Halal', 'full', 1, 'NIHT', 1, 1, 3, 'approved'),

-- DURBAN
('Britannia Hotel', 'Umbilo Road', 'Durban', 'South Africa', -29.8580, 31.0140, 'Indian, Bunny Chow', 'full', 1, 'NIHT', 1, 1, 2, 'approved'),
('Sunrise Chip n Ranch', 'Overport', 'Durban', 'South Africa', -29.8330, 31.0090, 'Indian, Halal Burgers', 'full', 1, 'NIHT', 1, 1, 1, 'approved'),
('Hollywoodbets', 'Various', 'Durban', 'South Africa', -29.8590, 31.0180, 'Indian, Curry', 'full', 1, 'NIHT', 1, 1, 2, 'approved');
