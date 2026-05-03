-- HalalEats — Gulf extras (Dammam, Khobar, Al Ain, RAK, Fujairah, Salalah).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- DAMMAM
('Albaik Dammam', 'Prince Mohammed Bin Fahd Road', 'Dammam', 'Saudi Arabia', 26.4350, 50.0950, 'Fried Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('Mandi House Dammam', 'King Saud Street', 'Dammam', 'Saudi Arabia', 26.4280, 50.1020, 'Mandi, Yemeni', 'full', 1, 'SFDA', 1, 0, 2, 'approved'),
('Heritage Village Restaurant', 'Corniche', 'Dammam', 'Saudi Arabia', 26.4500, 50.1050, 'Saudi, Khaleeji', 'full', 1, 'SFDA', 1, 0, 3, 'approved'),
('Al Tazaj Dammam', 'King Fahd Road', 'Dammam', 'Saudi Arabia', 26.4360, 50.0955, 'Grilled Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),

-- KHOBAR
('Heritage Village Khobar', 'Prince Faisal Bin Fahd Road', 'Khobar', 'Saudi Arabia', 26.2810, 50.2050, 'Saudi, Emirati', 'full', 1, 'SFDA', 1, 0, 3, 'approved'),
('Pizza Hut Khobar', 'Prince Sultan Road', 'Khobar', 'Saudi Arabia', 26.2780, 50.2070, 'Pizza, Halal', 'full', 1, 'SFDA', 1, 1, 2, 'approved'),
('Khazana Restaurant', 'Khobar Corniche', 'Khobar', 'Saudi Arabia', 26.2950, 50.2150, 'Indian', 'full', 1, 'SFDA', 1, 1, 3, 'approved'),

-- AL AIN
('Min Zaman', 'Hilton Al Ain', 'Al Ain', 'UAE', 24.2155, 55.7475, 'Lebanese', 'full', 1, 'ESMA', 1, 1, 4, 'approved'),
('Trader Vic''s', 'Al Ain', 'Al Ain', 'UAE', 24.2170, 55.7470, 'Polynesian, Halal', 'full', 1, 'ESMA', 1, 0, 4, 'approved'),
('Tanjore Restaurant', 'Hilton', 'Al Ain', 'UAE', 24.2156, 55.7476, 'Indian', 'full', 1, 'ESMA', 1, 1, 4, 'approved'),
('Al Diwan Restaurant', 'Town Center', 'Al Ain', 'UAE', 24.2295, 55.7445, 'Lebanese, Arabic', 'full', 1, 'ESMA', 1, 1, 3, 'approved'),

-- RAS AL KHAIMAH
('Pure Veggie Restaurant', 'Al Nakheel', 'Ras Al Khaimah', 'UAE', 25.7700, 55.9450, 'Indian Vegetarian', 'full', 1, 'ESMA', 0, 1, 1, 'approved'),
('Mughlai Restaurant', 'Al Hamra Mall', 'Ras Al Khaimah', 'UAE', 25.6850, 55.7800, 'Mughlai, Indian', 'full', 1, 'ESMA', 1, 1, 3, 'approved'),
('Al Sufra', 'RAK Corniche', 'Ras Al Khaimah', 'UAE', 25.7900, 55.9580, 'Lebanese, Arabic', 'full', 1, 'ESMA', 1, 1, 3, 'approved'),

-- FUJAIRAH
('Sadaf Restaurant Fujairah', 'Hamad Bin Abdullah Road', 'Fujairah', 'UAE', 25.1290, 56.3340, 'Iranian', 'full', 1, 'ESMA', 1, 0, 3, 'approved'),
('Taj Mahal Restaurant', 'Faseel Road', 'Fujairah', 'UAE', 25.1300, 56.3350, 'Indian, Pakistani', 'full', 1, 'ESMA', 1, 1, 2, 'approved'),

-- SALALAH
('Bait Al Luban Salalah', 'Al Salam Street', 'Salalah', 'Oman', 17.0190, 54.0900, 'Omani', 'full', 1, 'MAFI', 1, 1, 3, 'approved'),
('Al Saqara Restaurant', 'Al Hisn Street', 'Salalah', 'Oman', 17.0205, 54.0915, 'Omani, Arabic', 'full', 1, 'MAFI', 1, 0, 2, 'approved'),

-- ABHA / TAIF (Saudi mountains)
('Al Aseel Restaurant Abha', 'King Khalid Road', 'Abha', 'Saudi Arabia', 18.2160, 42.5050, 'Saudi, Asiri', 'full', 1, 'SFDA', 1, 0, 2, 'approved'),
('Albaik Taif', 'King Faisal Road', 'Taif', 'Saudi Arabia', 21.2700, 40.4170, 'Fried Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved');
