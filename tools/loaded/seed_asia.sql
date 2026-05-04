-- HalalEats — Asia halal restaurants seed (Istanbul, KL, Singapore, Jakarta, Karachi, Lahore, Doha).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- ISTANBUL
('Hamdi Restaurant', 'Eminonu', 'Istanbul', 'Turkey', 41.0167, 28.9700, 'Turkish, Kebabs', 'full', 1, 'GIMDES', 1, 0, 3, 'approved'),
('Sultanahmet Koftecisi', 'Divanyolu Caddesi, Sultanahmet', 'Istanbul', 'Turkey', 41.0083, 28.9777, 'Turkish Meatballs', 'full', 1, 'GIMDES', 1, 0, 2, 'approved'),
('Pandeli', 'Egyptian Bazaar, Eminonu', 'Istanbul', 'Turkey', 41.0162, 28.9710, 'Ottoman, Turkish', 'full', 1, 'GIMDES', 1, 0, 4, 'approved'),
('Karakoy Lokantasi', 'Kemankes Caddesi, Karakoy', 'Istanbul', 'Turkey', 41.0237, 28.9774, 'Turkish, Modern', 'full', 1, 'GIMDES', 1, 0, 4, 'approved'),
('Ciya Sofrasi', 'Caferaga, Kadikoy', 'Istanbul', 'Turkey', 40.9908, 29.0270, 'Anatolian, Regional', 'full', 1, 'GIMDES', 1, 1, 3, 'approved'),
('Develi Kebap', 'Samatya / multiple', 'Istanbul', 'Turkey', 41.0044, 28.9335, 'Turkish, Kebabs', 'full', 1, 'GIMDES', 1, 0, 3, 'approved'),
('Hocapasa Pidecisi', 'Sirkeci', 'Istanbul', 'Turkey', 41.0145, 28.9770, 'Pide, Turkish', 'full', 1, 'GIMDES', 1, 1, 2, 'approved'),
('Sehzade Cag Kebabi', 'Hocapasa, Sirkeci', 'Istanbul', 'Turkey', 41.0147, 28.9770, 'Cag Kebab, Erzurum', 'full', 1, 'GIMDES', 1, 0, 2, 'approved'),
('Asitane', 'Edirnekapi', 'Istanbul', 'Turkey', 41.0353, 28.9395, 'Ottoman Palace', 'full', 1, 'GIMDES', 1, 0, 4, 'approved'),
('Ali Ocakbasi', 'Beyoglu', 'Istanbul', 'Turkey', 41.0367, 28.9772, 'Ocakbasi, Kebabs', 'full', 1, 'GIMDES', 1, 0, 3, 'approved'),
('Special Ottoman Cafe', 'Sultanahmet', 'Istanbul', 'Turkey', 41.0086, 28.9802, 'Turkish', 'full', 1, 'GIMDES', 0, 1, 2, 'approved'),

-- KUALA LUMPUR
('Restoran Yusoof Dan Zakhir', 'Jalan Hang Lekir', 'Kuala Lumpur', 'Malaysia', 3.1465, 101.6970, 'Indian Muslim, Mamak', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Nasi Kandar Pelita', 'Jalan Ampang / multiple', 'Kuala Lumpur', 'Malaysia', 3.1604, 101.7163, 'Nasi Kandar, Mamak', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Restoran Hameed''s', 'Bangsar', 'Kuala Lumpur', 'Malaysia', 3.1295, 101.6700, 'Indian Muslim', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Restoran Insaf', 'Bukit Bintang', 'Kuala Lumpur', 'Malaysia', 3.1490, 101.7100, 'Indian Muslim, Mamak', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Kayu Nasi Kandar', 'Damansara / multiple', 'Kuala Lumpur', 'Malaysia', 3.1584, 101.6213, 'Nasi Kandar', 'full', 1, 'JAKIM', 1, 1, 2, 'approved'),
('Bangsar Spice', 'Jalan Telawi, Bangsar', 'Kuala Lumpur', 'Malaysia', 3.1320, 101.6707, 'Indian, Mughlai', 'full', 1, 'JAKIM', 1, 1, 3, 'approved'),
('Nasi Lemak Tanglin', 'Lake Gardens', 'Kuala Lumpur', 'Malaysia', 3.1410, 101.6840, 'Malay, Nasi Lemak', 'full', 1, 'JAKIM', 1, 0, 1, 'approved'),
('Restoran Sharif', 'Kampung Baru', 'Kuala Lumpur', 'Malaysia', 3.1654, 101.7049, 'Malay', 'full', 1, 'JAKIM', 1, 0, 2, 'approved'),
('Ipoh Restaurant', 'Petaling Street, Chinatown', 'Kuala Lumpur', 'Malaysia', 3.1430, 101.6970, 'Chinese Muslim, Halal', 'full', 1, 'JAKIM', 1, 0, 2, 'approved'),
('Restoran Saravanaa Bhavan KL', 'Brickfields, Little India', 'Kuala Lumpur', 'Malaysia', 3.1280, 101.6843, 'South Indian Veg', 'full', 1, 'JAKIM', 0, 1, 2, 'approved'),

-- SINGAPORE
('Zam Zam Restaurant', '697-699 North Bridge Road, Arab Street', 'Singapore', 'Singapore', 1.3025, 103.8595, 'Indian Muslim, Murtabak', 'full', 1, 'MUIS', 1, 0, 1, 'approved'),
('Bismillah Biryani', '50 Dunlop Street, Little India', 'Singapore', 'Singapore', 1.3057, 103.8540, 'Hyderabadi Biryani', 'full', 1, 'MUIS', 1, 0, 2, 'approved'),
('Ayam Penyet President', 'Lucky Plaza / multiple', 'Singapore', 'Singapore', 1.3050, 103.8330, 'Indonesian, Ayam Penyet', 'full', 1, 'MUIS', 1, 0, 2, 'approved'),
('Hjh Maimunah', '11-15 Jalan Pisang', 'Singapore', 'Singapore', 1.3013, 103.8615, 'Malay, Nasi Padang', 'full', 1, 'MUIS', 1, 0, 1, 'approved'),
('Selera Rasa Nasi Lemak', 'Adam Road Food Centre', 'Singapore', 'Singapore', 1.3245, 103.8108, 'Malay, Nasi Lemak', 'full', 1, 'MUIS', 1, 0, 1, 'approved'),
('Riverwalk Tandoor', '20 Upper Circular Road', 'Singapore', 'Singapore', 1.2880, 103.8480, 'Indian, North Indian', 'full', 1, 'MUIS', 1, 1, 2, 'approved'),
('Singapore Zam Zam', 'Arab Street', 'Singapore', 'Singapore', 1.3025, 103.8595, 'Murtabak, Indian Muslim', 'full', 1, 'MUIS', 1, 0, 1, 'approved'),

-- JAKARTA
('Sate Khas Senayan', 'Senayan / multiple', 'Jakarta', 'Indonesia', -6.2244, 106.8021, 'Indonesian, Sate', 'full', 1, 'MUI', 1, 0, 2, 'approved'),
('Sate Pak Kumis', 'Tebet', 'Jakarta', 'Indonesia', -6.2390, 106.8520, 'Sate, Indonesian', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Bakmi GM', 'Sudirman / multiple', 'Jakarta', 'Indonesia', -6.2270, 106.8290, 'Chinese Indonesian Halal', 'full', 1, 'MUI', 1, 0, 2, 'approved'),
('Nasi Padang Sederhana', 'Sudirman / multiple', 'Jakarta', 'Indonesia', -6.2200, 106.8200, 'Padang, West Sumatran', 'full', 1, 'MUI', 1, 0, 2, 'approved'),
('Pondok Sunda', 'Kemang', 'Jakarta', 'Indonesia', -6.2645, 106.8133, 'Sundanese', 'full', 1, 'MUI', 1, 1, 2, 'approved'),
('Pagi Sore', 'Tanah Abang', 'Jakarta', 'Indonesia', -6.1858, 106.8137, 'Padang', 'full', 1, 'MUI', 1, 0, 2, 'approved'),

-- KARACHI
('Bundu Khan', 'Jamshed Road / multiple', 'Karachi', 'Pakistan', 24.8830, 67.0570, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Kolachi Restaurant', 'Do Darya, DHA', 'Karachi', 'Pakistan', 24.7855, 67.0237, 'Pakistani, Seafood', 'full', 0, '', 1, 1, 4, 'approved'),
('Karim''s Karachi', 'Kemari', 'Karachi', 'Pakistan', 24.8350, 66.9650, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Hot N Spicy', 'Tariq Road', 'Karachi', 'Pakistan', 24.8783, 67.0654, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe Aylanto', 'Khayaban-e-Shamsheer, DHA', 'Karachi', 'Pakistan', 24.8050, 67.0312, 'Mediterranean, Continental', 'full', 0, '', 1, 1, 4, 'approved'),
('Saleem''s Karachi', 'Tariq Road', 'Karachi', 'Pakistan', 24.8780, 67.0660, 'Pakistani, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Kababjees', 'Bahadurabad / multiple', 'Karachi', 'Pakistan', 24.8841, 67.0723, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Burns Road Food Street', 'Burns Road, Saddar', 'Karachi', 'Pakistan', 24.8638, 67.0233, 'Pakistani Street Food', 'full', 0, '', 1, 0, 1, 'approved'),

-- LAHORE
('Andaaz Restaurant', 'Fort Road Food Street', 'Lahore', 'Pakistan', 31.5882, 74.3160, 'Pakistani, Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Cooco''s Den', 'Fort Road, Walled City', 'Lahore', 'Pakistan', 31.5879, 74.3158, 'Pakistani, Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Haveli Restaurant', 'Fort Road Food Street', 'Lahore', 'Pakistan', 31.5880, 74.3162, 'Pakistani, Mughlai', 'full', 0, '', 1, 1, 3, 'approved'),
('Bundu Khan Lahore', 'Liberty Market, Gulberg', 'Lahore', 'Pakistan', 31.5125, 74.3445, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),
('Phajja Siri Paye', 'Bansanwala Bazar, Walled City', 'Lahore', 'Pakistan', 31.5860, 74.3140, 'Siri Paye, Pakistani', 'full', 0, '', 1, 0, 1, 'approved'),
('Butt Karahi', 'Lakshmi Chowk', 'Lahore', 'Pakistan', 31.5708, 74.3132, 'Karahi, Pakistani', 'full', 0, '', 1, 0, 2, 'approved'),
('Tabaq Restaurant', 'MM Alam Road, Gulberg', 'Lahore', 'Pakistan', 31.5219, 74.3479, 'Pakistani, Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Daawat Restaurant', 'Liberty Market', 'Lahore', 'Pakistan', 31.5128, 74.3447, 'Pakistani BBQ', 'full', 0, '', 1, 0, 2, 'approved'),

-- DOHA
('Layali Lebanese', 'Al Sadd', 'Doha', 'Qatar', 25.2754, 51.5057, 'Lebanese', 'full', 1, 'Qatar Halal', 1, 1, 3, 'approved'),
('Saffron Lounge', 'The Pearl', 'Doha', 'Qatar', 25.3680, 51.5435, 'Indian, North Indian', 'full', 1, 'Qatar Halal', 1, 1, 4, 'approved'),
('Damasca One', 'Souq Waqif', 'Doha', 'Qatar', 25.2884, 51.5328, 'Syrian, Arabic', 'full', 1, 'Qatar Halal', 1, 1, 3, 'approved'),
('Al Bandar', 'Souq Waqif', 'Doha', 'Qatar', 25.2880, 51.5325, 'Seafood, Arabic', 'full', 1, 'Qatar Halal', 1, 0, 4, 'approved'),
('Turkey Central', 'Al Sadd', 'Doha', 'Qatar', 25.2755, 51.5062, 'Turkish', 'full', 1, 'Qatar Halal', 1, 0, 2, 'approved'),
('Al Aker Sweets', 'Al Sadd / multiple', 'Doha', 'Qatar', 25.2750, 51.5065, 'Arabic Sweets, Knafeh', 'full', 1, 'Qatar Halal', 0, 1, 2, 'approved'),
('Ric''s Kountry Kitchen', 'West Bay', 'Doha', 'Qatar', 25.3231, 51.5310, 'Multi-Cuisine, Buffet', 'full', 1, 'Qatar Halal', 1, 1, 3, 'approved'),
('Al Mourjan', 'Corniche', 'Doha', 'Qatar', 25.3060, 51.5220, 'Lebanese, Arabic', 'full', 1, 'Qatar Halal', 1, 1, 4, 'approved'),
('Qasr Al Hijaz', 'Al Sadd', 'Doha', 'Qatar', 25.2760, 51.5070, 'Saudi, Arabic', 'full', 1, 'Qatar Halal', 1, 0, 3, 'approved');
