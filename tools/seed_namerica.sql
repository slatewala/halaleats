-- HalalEats — North America halal restaurants seed (NYC, NJ, Toronto, Chicago, Houston).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- NEW YORK CITY
('The Halal Guys', '53rd & 6th, Midtown', 'New York', 'USA', 40.7614, -73.9778, 'Mediterranean, Halal Cart', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Kabab King Diner', '7301 37th Road, Jackson Heights', 'New York', 'USA', 40.7464, -73.8916, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Sammy''s Halal', '73-12 Broadway, Jackson Heights', 'New York', 'USA', 40.7458, -73.8918, 'Pakistani, Halal Cart', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Bombay Halwa', '74-23 37th Avenue, Jackson Heights', 'New York', 'USA', 40.7480, -73.8940, 'Indian Sweets, Snacks', 'full', 1, 'IFANCA', 0, 1, 1, 'approved'),
('Punjabi Deli', '114 E 1st Street, East Village', 'New York', 'USA', 40.7232, -73.9858, 'Punjabi', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Royal Kabab House', '7522 37th Avenue, Jackson Heights', 'New York', 'USA', 40.7473, -73.8917, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Kababish', '70-64 Broadway, Jackson Heights', 'New York', 'USA', 40.7462, -73.8929, 'Pakistani, BBQ', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Curry & Cup', 'Brooklyn / multiple', 'New York', 'USA', 40.6700, -73.9760, 'Bangladeshi, Indian', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Adda Indian Canteen', '31-31 Thomson Avenue, LIC', 'New York', 'USA', 40.7457, -73.9367, 'Indian Regional', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('The Kati Roll Company', '99 MacDougal Street, Greenwich', 'New York', 'USA', 40.7290, -74.0010, 'Indian Kati Rolls', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Haandi Restaurant', '113 Lexington Avenue, Murray Hill', 'New York', 'USA', 40.7445, -73.9817, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Pakistan Tea House', '176 Church Street, Tribeca', 'New York', 'USA', 40.7170, -74.0080, 'Pakistani', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),

-- NEW JERSEY (close to NYC)
('Al-Falafel', 'Paterson', 'Paterson', 'USA', 40.9168, -74.1718, 'Middle Eastern', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Toros Turkish', 'Edison', 'Edison', 'USA', 40.5187, -74.4121, 'Turkish', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),

-- TORONTO
('Lahore Tikka House', '1365 Gerrard Street East', 'Toronto', 'Canada', 43.6750, -79.3253, 'Pakistani, Punjabi', 'full', 1, 'HMA', 1, 1, 2, 'approved'),
('Paramount Fine Foods', '253 Yonge Street / multiple', 'Toronto', 'Canada', 43.6536, -79.3793, 'Middle Eastern, Lebanese', 'full', 1, 'HMA', 1, 1, 2, 'approved'),
('Bismillah Restaurant', '298 Wilson Avenue', 'Toronto', 'Canada', 43.7441, -79.4361, 'Pakistani, Indian', 'full', 1, 'HMA', 1, 1, 2, 'approved'),
('Ghazale', '504 Bloor Street West', 'Toronto', 'Canada', 43.6651, -79.4079, 'Lebanese, Middle Eastern', 'full', 1, 'HMA', 1, 1, 1, 'approved'),
('Ali Baba''s', '328 Yonge Street / multiple', 'Toronto', 'Canada', 43.6580, -79.3812, 'Middle Eastern Shawarma', 'full', 1, 'HMA', 1, 1, 1, 'approved'),
('Banjara Indian Cuisine', '796 Bloor Street West', 'Toronto', 'Canada', 43.6620, -79.4173, 'Indian, Mughlai', 'full', 1, 'HMA', 1, 1, 2, 'approved'),
('Karma Indian Bistro', '4040 Hurontario Street, Mississauga', 'Toronto', 'Canada', 43.5810, -79.6440, 'Indian', 'full', 1, 'HMA', 1, 1, 3, 'approved'),
('Salam Indian Bistro', '850 King Street West', 'Toronto', 'Canada', 43.6440, -79.4080, 'Indian, Pakistani', 'full', 1, 'HMA', 1, 1, 2, 'approved'),
('Imam''s Halal', 'Scarborough', 'Toronto', 'Canada', 43.7764, -79.2318, 'Mediterranean, Halal', 'full', 1, 'HMA', 1, 1, 2, 'approved'),

-- CHICAGO
('Ghareeb Nawaz', '2032 W Devon Avenue', 'Chicago', 'USA', 41.9978, -87.6862, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Sabri Nihari', '2502 W Devon Avenue', 'Chicago', 'USA', 41.9980, -87.6900, 'Pakistani Nihari', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Khan BBQ', '2401 W Devon Avenue', 'Chicago', 'USA', 41.9978, -87.6884, 'Pakistani BBQ', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Chicago Kebab House', 'Devon Avenue', 'Chicago', 'USA', 41.9979, -87.6870, 'Pakistani, Kebabs', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),

-- HOUSTON
('Bismillah Cafe & Sweets', '11226 Bissonnet Street', 'Houston', 'USA', 29.6671, -95.5790, 'Pakistani, Sweets', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Aga''s Restaurant', '11842 Wilcrest Drive', 'Houston', 'USA', 29.6732, -95.5780, 'Pakistani BBQ', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Himalaya Restaurant', '6652 Southwest Freeway', 'Houston', 'USA', 29.7180, -95.5070, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved');
