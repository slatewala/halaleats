-- HalalEats — More USA cities (LA, SF, Detroit/Dearborn, DC, Boston, Atlanta, Dallas, Seattle).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- LOS ANGELES
('Chettinad Express', 'Artesia, Little India', 'Los Angeles', 'USA', 33.8540, -118.0830, 'South Indian, Halal', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Falafel King', 'Westwood Boulevard', 'Los Angeles', 'USA', 34.0590, -118.4430, 'Persian, Falafel', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Shamshiri Grill', 'Westwood Boulevard', 'Los Angeles', 'USA', 34.0610, -118.4435, 'Persian', 'full', 1, 'IFANCA', 1, 0, 3, 'approved'),
('Attari Sandwich Shop', 'Westwood Boulevard', 'Los Angeles', 'USA', 34.0605, -118.4438, 'Persian Sandwiches', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Kareem''s Restaurant', 'Anaheim', 'Los Angeles', 'USA', 33.8366, -117.9143, 'Lebanese, Mediterranean', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('California Halal Chinese', 'Cerritos', 'Los Angeles', 'USA', 33.8583, -118.0648, 'Chinese, Halal', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Sahara Pita Cafe', 'Glendale', 'Los Angeles', 'USA', 34.1425, -118.2551, 'Mediterranean, Lebanese', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- SAN FRANCISCO BAY AREA
('Chaat Cafe', 'Bay Area / multiple', 'San Francisco', 'USA', 37.7749, -122.4194, 'Indian, Pakistani', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Pakwan', 'Mission District', 'San Francisco', 'USA', 37.7625, -122.4090, 'Pakistani', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Shalimar', 'Tenderloin', 'San Francisco', 'USA', 37.7843, -122.4147, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Lahore Karahi', 'Outer Mission', 'San Francisco', 'USA', 37.7170, -122.4500, 'Pakistani', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),
('Mehfil Indian Cuisine', 'Sunnyvale', 'San Francisco', 'USA', 37.3717, -122.0341, 'Indian, Pakistani', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- DEARBORN / DETROIT
('Al Ameer', 'Warren Avenue, Dearborn', 'Detroit', 'USA', 42.3164, -83.1762, 'Lebanese, Middle Eastern', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Hamido Restaurant', 'Warren Avenue, Dearborn', 'Detroit', 'USA', 42.3160, -83.1770, 'Lebanese', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Shatila Bakery', 'Warren Avenue, Dearborn', 'Detroit', 'USA', 42.3168, -83.1755, 'Arabic Sweets, Knafeh', 'full', 1, 'IFANCA', 0, 1, 1, 'approved'),
('La Pita', 'Schaefer Road, Dearborn', 'Detroit', 'USA', 42.3220, -83.1820, 'Lebanese', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Cedarland Restaurant', 'Schaefer Road, Dearborn', 'Detroit', 'USA', 42.3215, -83.1825, 'Lebanese', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Dearborn Meat Market', 'Schaefer, Dearborn', 'Detroit', 'USA', 42.3218, -83.1823, 'Lebanese Butcher Grill', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),

-- WASHINGTON DC / VIRGINIA
('Old Town Halal', 'King Street, Alexandria, VA', 'Washington', 'USA', 38.8048, -77.0469, 'Mediterranean, Halal Cart', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Ravi Kabob', 'Wilson Boulevard, Arlington, VA', 'Washington', 'USA', 38.8870, -77.0997, 'Pakistani', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Kabob Palace', 'Crystal City, Arlington, VA', 'Washington', 'USA', 38.8580, -77.0510, 'Afghan, Pakistani', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Amoo''s House of Kabob', 'McLean, VA', 'Washington', 'USA', 38.9340, -77.1773, 'Persian', 'full', 1, 'IFANCA', 1, 0, 3, 'approved'),

-- BOSTON
('Tanjore', 'Harvard Square, Cambridge', 'Boston', 'USA', 42.3744, -71.1182, 'Indian Regional, Halal', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Halal Indian Cuisine', 'Brookline', 'Boston', 'USA', 42.3318, -71.1213, 'Indian, Pakistani', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Kashmir Halal Restaurant', 'Newbury Street', 'Boston', 'USA', 42.3501, -71.0810, 'Indian, Pakistani', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),

-- ATLANTA
('Halal Guys Atlanta', 'Buckhead', 'Atlanta', 'USA', 33.8470, -84.3617, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Sufi''s Kitchen', 'Cheshire Bridge Road', 'Atlanta', 'USA', 33.8230, -84.3457, 'Persian', 'full', 1, 'IFANCA', 1, 1, 3, 'approved'),
('Spice Bazaar', 'Decatur', 'Atlanta', 'USA', 33.7748, -84.2963, 'Indian, Pakistani', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Ali Baba Grill', 'Marietta', 'Atlanta', 'USA', 33.9526, -84.5499, 'Mediterranean, Halal', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),

-- DALLAS
('Madina Restaurant', 'Richardson', 'Dallas', 'USA', 32.9483, -96.7299, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Bundoo Khan', 'Richardson', 'Dallas', 'USA', 32.9486, -96.7301, 'Pakistani BBQ', 'full', 1, 'IFANCA', 1, 0, 2, 'approved'),
('Chai Wala', 'Plano', 'Dallas', 'USA', 33.0198, -96.6989, 'Pakistani Cafe', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),

-- SEATTLE
('Cafe Turko', 'Fremont', 'Seattle', 'USA', 47.6512, -122.3501, 'Turkish', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Dilara Halal Restaurant', 'Northgate', 'Seattle', 'USA', 47.7066, -122.3257, 'Pakistani, Indian', 'full', 1, 'IFANCA', 1, 1, 2, 'approved'),
('Mahmood''s Halal', 'Pike Place Market', 'Seattle', 'USA', 47.6097, -122.3422, 'Mediterranean, Halal Cart', 'full', 1, 'IFANCA', 1, 0, 1, 'approved'),

-- MINNEAPOLIS
('Afro Deli', 'Cedar-Riverside', 'Minneapolis', 'USA', 44.9700, -93.2470, 'Somali, East African', 'full', 1, 'IFANCA', 1, 1, 1, 'approved'),
('Safari Restaurant', 'Lake Street', 'Minneapolis', 'USA', 44.9483, -93.2614, 'Somali', 'full', 1, 'IFANCA', 1, 0, 2, 'approved');
