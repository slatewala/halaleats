-- HalalEats — Middle East halal seed (Saudi, Kuwait, Bahrain, Oman, Jordan, Lebanon, Iraq, Iran).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- RIYADH
('Najd Village', 'Takhassusi Street', 'Riyadh', 'Saudi Arabia', 24.7028, 46.6753, 'Saudi, Najdi', 'full', 1, 'SFDA', 1, 0, 4, 'approved'),
('Al Romansiah', 'King Fahd Road / multiple', 'Riyadh', 'Saudi Arabia', 24.6965, 46.6840, 'Saudi, Mandi', 'full', 1, 'SFDA', 1, 0, 2, 'approved'),
('Albaik Riyadh', 'Olaya / multiple', 'Riyadh', 'Saudi Arabia', 24.6940, 46.6815, 'Fried Chicken, Saudi', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('Maharaja by Vineet', 'King Fahd Road', 'Riyadh', 'Saudi Arabia', 24.7100, 46.6760, 'Indian Fine Dining', 'full', 1, 'SFDA', 1, 1, 5, 'approved'),
('Globe Restaurant', 'Al Faisaliah Tower', 'Riyadh', 'Saudi Arabia', 24.6895, 46.6859, 'International, Fine Dining', 'full', 1, 'SFDA', 1, 0, 5, 'approved'),
('Tarbia House', 'Al Wezarat', 'Riyadh', 'Saudi Arabia', 24.6480, 46.7150, 'Saudi, Najdi', 'full', 1, 'SFDA', 1, 0, 3, 'approved'),

-- JEDDAH
('Albaik Jeddah', 'Tahlia Street', 'Jeddah', 'Saudi Arabia', 21.5862, 39.1700, 'Fried Chicken, Saudi', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('Twina Restaurant', 'Tahlia Street', 'Jeddah', 'Saudi Arabia', 21.5870, 39.1705, 'Lebanese, Arabic', 'full', 1, 'SFDA', 1, 1, 3, 'approved'),
('Byblos', 'Corniche Road', 'Jeddah', 'Saudi Arabia', 21.5435, 39.1728, 'Lebanese', 'full', 1, 'SFDA', 1, 1, 4, 'approved'),
('Coya Jeddah', 'Tahlia Street', 'Jeddah', 'Saudi Arabia', 21.5872, 39.1707, 'Peruvian, Halal Adapted', 'full', 1, 'SFDA', 1, 1, 5, 'approved'),
('Andalusia Restaurant', 'Al Hamra District', 'Jeddah', 'Saudi Arabia', 21.5630, 39.1690, 'Mediterranean, Andalusian', 'full', 1, 'SFDA', 1, 1, 4, 'approved'),
('Al Tazaj', 'Tahlia / multiple', 'Jeddah', 'Saudi Arabia', 21.5860, 39.1710, 'Grilled Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),

-- MECCA
('Al Tazaj Mecca', 'Ibrahim Al Khalil Road', 'Mecca', 'Saudi Arabia', 21.4225, 39.8262, 'Grilled Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('The Cheesecake Factory Mecca', 'Abraj Al Bait', 'Mecca', 'Saudi Arabia', 21.4189, 39.8262, 'American, Halal', 'full', 1, 'SFDA', 1, 1, 3, 'approved'),
('Al Baik Mecca', 'Misfalah / multiple', 'Mecca', 'Saudi Arabia', 21.4175, 39.8255, 'Fried Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('Al Fanar Restaurant', 'Aziziyah', 'Mecca', 'Saudi Arabia', 21.4322, 39.8520, 'Saudi, Emirati', 'full', 1, 'SFDA', 1, 0, 3, 'approved'),
('Mandi Al Tahrir', 'Mecca Mall area', 'Mecca', 'Saudi Arabia', 21.4380, 39.8120, 'Mandi, Yemeni', 'full', 1, 'SFDA', 1, 0, 2, 'approved'),

-- MEDINA
('Al Baik Medina', 'King Fahd Road', 'Medina', 'Saudi Arabia', 24.4709, 39.6121, 'Fried Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('Al Khayyam Restaurant', 'Central Haram Area', 'Medina', 'Saudi Arabia', 24.4690, 39.6110, 'Iranian, Persian', 'full', 1, 'SFDA', 1, 0, 3, 'approved'),
('Al Tazaj Medina', 'Quba Road', 'Medina', 'Saudi Arabia', 24.4585, 39.6240, 'Grilled Chicken', 'full', 1, 'SFDA', 1, 0, 1, 'approved'),
('Mandi Al Bukhari', 'Tahlia Medina', 'Medina', 'Saudi Arabia', 24.4720, 39.6090, 'Mandi, Yemeni', 'full', 1, 'SFDA', 1, 0, 2, 'approved'),
('Hashi Basha', 'King Faisal Road', 'Medina', 'Saudi Arabia', 24.4705, 39.6130, 'Camel Meat, Saudi', 'full', 1, 'SFDA', 1, 0, 3, 'approved'),

-- KUWAIT CITY
('Mais Alghanim', 'Gulf Road', 'Kuwait City', 'Kuwait', 29.3375, 48.0024, 'Lebanese, Arabic', 'full', 1, 'PAFN', 1, 1, 3, 'approved'),
('Freij Sweifieh', 'Salmiya', 'Kuwait City', 'Kuwait', 29.3340, 48.0760, 'Lebanese', 'full', 1, 'PAFN', 1, 1, 3, 'approved'),
('Karak House', 'Al Bidaa', 'Kuwait City', 'Kuwait', 29.3450, 48.0710, 'Khaleeji, Tea', 'full', 1, 'PAFN', 0, 1, 1, 'approved'),
('Slider Station', 'Salmiya / multiple', 'Kuwait City', 'Kuwait', 29.3343, 48.0762, 'Burgers, American', 'full', 1, 'PAFN', 1, 0, 2, 'approved'),
('Le Notre Kuwait', 'Marina Mall', 'Kuwait City', 'Kuwait', 29.3360, 48.0770, 'French, Patisserie', 'full', 1, 'PAFN', 1, 1, 4, 'approved'),

-- MANAMA, BAHRAIN
('Karam Beirut', 'Adliya', 'Manama', 'Bahrain', 26.2272, 50.5944, 'Lebanese', 'full', 1, 'BAH', 1, 1, 3, 'approved'),
('Sato Bahrain', 'Adliya', 'Manama', 'Bahrain', 26.2275, 50.5946, 'Japanese, Halal', 'full', 1, 'BAH', 1, 1, 4, 'approved'),
('Coco''s Bahrain', 'Saar', 'Manama', 'Bahrain', 26.1850, 50.5160, 'International', 'full', 1, 'BAH', 1, 1, 3, 'approved'),
('Bushra Restaurant', 'Manama Souq', 'Manama', 'Bahrain', 26.2358, 50.5790, 'Bahraini, Arabic', 'full', 1, 'BAH', 1, 0, 2, 'approved'),

-- MUSCAT, OMAN
('Bait Al Luban', 'Mutrah Corniche', 'Muscat', 'Oman', 23.6175, 58.5670, 'Omani', 'full', 1, 'MAFI', 1, 1, 3, 'approved'),
('Ubhar Restaurant', 'Bareeq Al Shatti, Shatti Al Qurum', 'Muscat', 'Oman', 23.6135, 58.4750, 'Omani Modern', 'full', 1, 'MAFI', 1, 1, 4, 'approved'),
('Kargeen Caffe', 'Madinat Sultan Qaboos', 'Muscat', 'Oman', 23.5980, 58.4495, 'Omani, Cafe', 'full', 1, 'MAFI', 1, 1, 3, 'approved'),
('Mumtaz Mahal', 'Qurum Park', 'Muscat', 'Oman', 23.6135, 58.4530, 'Indian, Mughlai', 'full', 1, 'MAFI', 1, 1, 4, 'approved'),
('Pavo Real', 'Madinat Sultan Qaboos', 'Muscat', 'Oman', 23.5982, 58.4500, 'Mexican, Halal', 'full', 1, 'MAFI', 1, 1, 3, 'approved'),

-- AMMAN, JORDAN
('Hashem Restaurant', 'Downtown Amman', 'Amman', 'Jordan', 31.9510, 35.9320, 'Falafel, Arabic', 'full', 1, 'JFDA', 0, 1, 1, 'approved'),
('Sufra Restaurant', 'Rainbow Street', 'Amman', 'Jordan', 31.9517, 35.9308, 'Jordanian, Arabic', 'full', 1, 'JFDA', 1, 1, 3, 'approved'),
('Fakhr El-Din', 'Jabal Amman', 'Amman', 'Jordan', 31.9515, 35.9263, 'Lebanese', 'full', 1, 'JFDA', 1, 1, 4, 'approved'),
('Reem Cafeteria', '2nd Circle', 'Amman', 'Jordan', 31.9520, 35.9215, 'Shawarma, Street Food', 'full', 1, 'JFDA', 1, 0, 1, 'approved'),
('Tannoureen', 'Um Uthaina', 'Amman', 'Jordan', 31.9740, 35.8660, 'Lebanese', 'full', 1, 'JFDA', 1, 1, 4, 'approved'),
('Levant Restaurant', '6th Circle', 'Amman', 'Jordan', 31.9620, 35.8410, 'Levantine', 'full', 1, 'JFDA', 1, 1, 4, 'approved'),

-- BEIRUT, LEBANON
('Al Falamanki', 'Sodeco', 'Beirut', 'Lebanon', 33.8867, 35.5183, 'Lebanese', 'full', 0, '', 1, 1, 3, 'approved'),
('Em Sherif', 'Ashrafieh', 'Beirut', 'Lebanon', 33.8833, 35.5180, 'Lebanese Fine Dining', 'full', 0, '', 1, 1, 5, 'approved'),
('Tawlet', 'Mar Mikhael', 'Beirut', 'Lebanon', 33.8970, 35.5260, 'Lebanese Regional', 'full', 0, '', 1, 1, 4, 'approved'),
('Barbar', 'Hamra Street', 'Beirut', 'Lebanon', 33.8988, 35.4828, 'Shawarma, Street Food', 'full', 0, '', 1, 1, 1, 'approved'),

-- BAGHDAD
('Al Saa''a Restaurant', 'Karadah', 'Baghdad', 'Iraq', 33.3030, 44.4090, 'Iraqi, Masgouf', 'full', 1, 'IFA', 1, 0, 2, 'approved'),
('Mazaya Restaurant', 'Mansour', 'Baghdad', 'Iraq', 33.3140, 44.3540, 'Iraqi, Arabic', 'full', 1, 'IFA', 1, 0, 2, 'approved'),

-- TEHRAN
('Dizi Sara', 'Lalehzar', 'Tehran', 'Iran', 35.6907, 51.4233, 'Iranian, Dizi', 'full', 1, 'INSO', 1, 0, 2, 'approved'),
('Moslem Restaurant', 'Naser Khosrow Street', 'Tehran', 'Iran', 35.6822, 51.4218, 'Iranian, Tahchin', 'full', 1, 'INSO', 1, 0, 2, 'approved'),
('Shandiz Restaurant', 'Mirdamad Boulevard', 'Tehran', 'Iran', 35.7572, 51.4211, 'Iranian, Kebab', 'full', 1, 'INSO', 1, 0, 3, 'approved'),
('Alaaeddin', 'Vali-Asr Avenue', 'Tehran', 'Iran', 35.7170, 51.4060, 'Iranian, Persian', 'full', 1, 'INSO', 1, 1, 3, 'approved');
