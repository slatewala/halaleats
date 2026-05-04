-- HalalEats — India tier-2 cities (Patna, Kanpur, Indore, Nagpur, Surat, Mysore, Coimbatore, Mangalore, Vijayawada, Ranchi).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- PATNA
('Bansi Vihar', 'Boring Road', 'Patna', 'India', 25.6105, 85.1300, 'Indian, Mughlai', 'full', 0, '', 1, 1, 2, 'approved'),
('Maurya Hotel', 'South Gandhi Maidan', 'Patna', 'India', 25.6190, 85.1360, 'Mughlai, Bihari', 'full', 0, '', 1, 0, 3, 'approved'),
('Pind Balluchi Patna', 'Frazer Road', 'Patna', 'India', 25.6155, 85.1380, 'Punjabi, Pakistani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Star', 'Kankarbagh', 'Patna', 'India', 25.5985, 85.1505, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- KANPUR
('Shikhar Restaurant', 'Hotel Landmark, Mall Road', 'Kanpur', 'India', 26.4475, 80.3320, 'Mughlai', 'full', 0, '', 1, 1, 3, 'approved'),
('Tunday Kababi Kanpur', 'Civil Lines', 'Kanpur', 'India', 26.4730, 80.3500, 'Awadhi Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Royal', 'Mall Road', 'Kanpur', 'India', 26.4495, 80.3325, 'Mughlai, Continental', 'full', 0, '', 1, 1, 3, 'approved'),

-- INDORE
('Apna Sweets', 'Sarafa Bazar', 'Indore', 'India', 22.7180, 75.8580, 'Sweets, Snacks', 'full', 0, '', 0, 1, 1, 'approved'),
('Karim''s Indore', 'Vijay Nagar', 'Indore', 'India', 22.7510, 75.8930, 'Mughlai, Kebabs', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Sayaji Indore', 'Vijay Nagar', 'Indore', 'India', 22.7505, 75.8935, 'Multi-Cuisine', 'full', 0, '', 1, 1, 4, 'approved'),
('Hotel Imperial Indore', 'MG Road', 'Indore', 'India', 22.7195, 75.8580, 'Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),

-- NAGPUR
('Haldiram Thaal', 'Civil Lines', 'Nagpur', 'India', 21.1502, 79.0882, 'Indian, Vegetarian', 'full', 0, '', 0, 1, 2, 'approved'),
('Ashok Ka Dhaba', 'Sitabuldi', 'Nagpur', 'India', 21.1450, 79.0840, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Crystal Nagpur', 'Sadar', 'Nagpur', 'India', 21.1620, 79.0875, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- SURAT
('Rasranjan', 'Athwa Lines', 'Surat', 'India', 21.1700, 72.8200, 'Gujarati, Mughlai', 'partial', 0, '', 0, 1, 2, 'approved'),
('Mughal Darbar Surat', 'Ring Road', 'Surat', 'India', 21.1985, 72.8300, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Asia Restaurant Surat', 'Adajan', 'Surat', 'India', 21.2010, 72.7950, 'Mughlai, Chinese', 'full', 0, '', 1, 1, 2, 'approved'),

-- MYSORE
('Hotel Mahesh Prasad', 'Devraj Mohalla', 'Mysore', 'India', 12.3050, 76.6470, 'Mughlai, Mysore', 'full', 0, '', 1, 0, 2, 'approved'),
('Park Lane Hotel', 'Vinoba Road', 'Mysore', 'India', 12.3070, 76.6520, 'Continental, Mughlai', 'full', 0, '', 1, 1, 3, 'approved'),
('Hyderabad Biryani Mysore', 'Saraswathipuram', 'Mysore', 'India', 12.3150, 76.6280, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- COIMBATORE
('Junior Kuppanna', 'RS Puram', 'Coimbatore', 'India', 11.0085, 76.9555, 'Tamil, Chettinad', 'full', 0, '', 1, 1, 2, 'approved'),
('Sri Annapoorna', 'RS Puram', 'Coimbatore', 'India', 11.0090, 76.9570, 'South Indian Veg', 'full', 0, '', 0, 1, 1, 'approved'),
('Salaam Namaste', 'Race Course', 'Coimbatore', 'India', 11.0025, 76.9870, 'North Indian, Mughlai', 'full', 0, '', 1, 1, 3, 'approved'),

-- MANGALORE
('Maharaja Restaurant', 'Hampankatta', 'Mangalore', 'India', 12.8730, 74.8430, 'Mughlai, Mangalorean', 'full', 0, '', 1, 0, 2, 'approved'),
('Ideal Cafe Mangalore', 'Lalbagh', 'Mangalore', 'India', 12.8745, 74.8410, 'Mangalorean, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Ayodhya', 'Pandeshwar', 'Mangalore', 'India', 12.8650, 74.8420, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 2, 'approved'),

-- VIJAYAWADA
('Babai Hotel', 'Eluru Road', 'Vijayawada', 'India', 16.5165, 80.6195, 'Andhra, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Subbayya Gari Hotel', 'MG Road', 'Vijayawada', 'India', 16.5060, 80.6480, 'Andhra, Halal Options', 'partial', 0, '', 1, 1, 2, 'approved'),

-- RANCHI
('Capitol Hill Ranchi', 'Main Road', 'Ranchi', 'India', 23.3690, 85.3245, 'Multi-Cuisine, Mughlai', 'full', 0, '', 1, 1, 3, 'approved'),
('Kaveri Restaurant', 'Lalpur', 'Ranchi', 'India', 23.3650, 85.3300, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved');
