-- HalalEats — East/Southeast Asia halal seed (Tokyo, Osaka, Seoul, Beijing, Shanghai, Xi'an, Bangkok, HCMC, Manila, Dhaka, Colombo).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- TOKYO
('Asakusa Sushiken', 'Asakusa', 'Tokyo', 'Japan', 35.7140, 139.7967, 'Sushi, Halal', 'full', 1, 'JHA', 1, 1, 4, 'approved'),
('Sumiyakiya Halal', 'Shinjuku', 'Tokyo', 'Japan', 35.6938, 139.7034, 'Yakiniku, Halal', 'full', 1, 'JHA', 1, 0, 4, 'approved'),
('Halal Yakiniku Panga', 'Shibuya', 'Tokyo', 'Japan', 35.6595, 139.7005, 'Yakiniku, Halal', 'full', 1, 'JHA', 1, 0, 4, 'approved'),
('Sekai Cafe', 'Asakusa', 'Tokyo', 'Japan', 35.7130, 139.7960, 'Cafe, Halal Vegetarian', 'full', 1, 'JHA', 0, 1, 2, 'approved'),
('CoCo Ichibanya Halal', 'Akihabara', 'Tokyo', 'Japan', 35.7022, 139.7745, 'Japanese Curry', 'full', 1, 'JHA', 1, 1, 2, 'approved'),
('Naritaya', 'Asakusa', 'Tokyo', 'Japan', 35.7117, 139.7960, 'Ramen, Halal', 'full', 1, 'JHA', 1, 0, 2, 'approved'),
('Saray Turkish Restaurant', 'Shinjuku', 'Tokyo', 'Japan', 35.6920, 139.7040, 'Turkish', 'full', 1, 'JHA', 1, 0, 3, 'approved'),
('Bombay Bazar', 'Nishi Kasai', 'Tokyo', 'Japan', 35.6680, 139.8755, 'Indian, Pakistani', 'full', 1, 'JHA', 1, 1, 2, 'approved'),

-- OSAKA
('Ayam-Ya Osaka', 'Esakacho, Suita', 'Osaka', 'Japan', 34.7625, 135.4980, 'Halal Ramen', 'full', 1, 'JHA', 1, 0, 2, 'approved'),
('Yakiniku Panga Osaka', 'Namba', 'Osaka', 'Japan', 34.6680, 135.5010, 'Yakiniku, Halal', 'full', 1, 'JHA', 1, 0, 4, 'approved'),
('Matsuri Halal Sushi', 'Dotonbori', 'Osaka', 'Japan', 34.6685, 135.5018, 'Sushi, Halal', 'full', 1, 'JHA', 1, 1, 3, 'approved'),

-- KYOTO
('Naritaya Kyoto', 'Higashiyama', 'Kyoto', 'Japan', 35.0040, 135.7820, 'Ramen, Halal', 'full', 1, 'JHA', 1, 0, 2, 'approved'),
('Ayam-Ya Kyoto', 'Kawaramachi', 'Kyoto', 'Japan', 35.0080, 135.7680, 'Halal Ramen', 'full', 1, 'JHA', 1, 0, 2, 'approved'),

-- SEOUL
('Eid Halal Korean Food', 'Itaewon', 'Seoul', 'South Korea', 37.5347, 126.9947, 'Korean BBQ, Halal', 'full', 1, 'KMF', 1, 0, 3, 'approved'),
('Mr Kebab', 'Itaewon', 'Seoul', 'South Korea', 37.5345, 126.9942, 'Turkish Kebab', 'full', 1, 'KMF', 1, 1, 1, 'approved'),
('Salam Restaurant', 'Itaewon', 'Seoul', 'South Korea', 37.5348, 126.9950, 'Lebanese, Arabic', 'full', 1, 'KMF', 1, 1, 3, 'approved'),
('Murree Pakistani Restaurant', 'Itaewon', 'Seoul', 'South Korea', 37.5344, 126.9953, 'Pakistani', 'full', 1, 'KMF', 1, 1, 2, 'approved'),
('Makan Halal Korean', 'Hongdae', 'Seoul', 'South Korea', 37.5560, 126.9230, 'Korean, Halal', 'full', 1, 'KMF', 1, 1, 3, 'approved'),

-- BEIJING
('Hong Bin Lou', 'Yangrou Hutong, Xicheng', 'Beijing', 'China', 39.9180, 116.3700, 'Hui Muslim, Hot Pot', 'full', 1, 'CIA', 1, 0, 3, 'approved'),
('Yang Fang Lamb Hot Pot', 'Niujie', 'Beijing', 'China', 39.8855, 116.3680, 'Hui Hot Pot', 'full', 1, 'CIA', 1, 0, 3, 'approved'),
('Niujie Mutton Restaurant', 'Niujie Mosque area', 'Beijing', 'China', 39.8855, 116.3686, 'Hui Muslim', 'full', 1, 'CIA', 1, 0, 2, 'approved'),
('Crescent Moon Muslim', 'Dongsi Liutiao', 'Beijing', 'China', 39.9285, 116.4150, 'Uyghur', 'full', 1, 'CIA', 1, 1, 3, 'approved'),

-- SHANGHAI
('Yershari Uyghur Restaurant', 'Yishan Road', 'Shanghai', 'China', 31.1860, 121.4180, 'Uyghur', 'full', 1, 'CIA', 1, 1, 2, 'approved'),
('Xinjiang Restaurant', 'Aomen Road', 'Shanghai', 'China', 31.2520, 121.4500, 'Xinjiang Muslim', 'full', 1, 'CIA', 1, 1, 2, 'approved'),
('1001 Nights Restaurant', 'Hongmei Road', 'Shanghai', 'China', 31.1750, 121.4067, 'Middle Eastern', 'full', 1, 'CIA', 1, 1, 3, 'approved'),

-- XI''AN
('Lao Sun Jia Restaurant', 'Dongmu Toushi Street', 'Xi''an', 'China', 34.2630, 108.9472, 'Hui Muslim, Paomo', 'full', 1, 'CIA', 1, 0, 2, 'approved'),
('Muslim Quarter Stalls', 'Beiyuanmen Street, Muslim Quarter', 'Xi''an', 'China', 34.2685, 108.9418, 'Hui Street Food', 'full', 1, 'CIA', 1, 0, 1, 'approved'),
('Jia San Soup Dumpling', 'Beiyuanmen Street', 'Xi''an', 'China', 34.2683, 108.9420, 'Hui Soup Dumplings', 'full', 1, 'CIA', 1, 0, 2, 'approved'),

-- BANGKOK
('Roti-Mataba', 'Phra Athit Road', 'Bangkok', 'Thailand', 13.7625, 100.4940, 'Thai-Muslim, Roti', 'full', 1, 'CICOT', 1, 1, 1, 'approved'),
('Muslim Restaurant', 'Charoen Krung Road', 'Bangkok', 'Thailand', 13.7245, 100.5145, 'Thai-Muslim, Indian', 'full', 1, 'CICOT', 1, 1, 1, 'approved'),
('Krua Apsorn', 'Dinso Road, Phra Nakhon', 'Bangkok', 'Thailand', 13.7568, 100.5012, 'Thai, Halal Options', 'partial', 0, '', 1, 1, 2, 'approved'),
('Saras Indian Restaurant', 'Sukhumvit Soi 22', 'Bangkok', 'Thailand', 13.7325, 100.5640, 'Indian, Halal', 'full', 1, 'CICOT', 1, 1, 2, 'approved'),
('Al Saray', 'Sukhumvit Soi 3/1, Nana', 'Bangkok', 'Thailand', 13.7438, 100.5570, 'Lebanese, Arabic', 'full', 1, 'CICOT', 1, 1, 2, 'approved'),
('Beirut Restaurant Bangkok', 'Sukhumvit Soi 3/1', 'Bangkok', 'Thailand', 13.7440, 100.5575, 'Lebanese', 'full', 1, 'CICOT', 1, 1, 2, 'approved'),

-- HO CHI MINH CITY
('Halal Saigon', 'District 1', 'Ho Chi Minh City', 'Vietnam', 10.7770, 106.7008, 'Halal Vietnamese', 'full', 1, 'HCA', 1, 1, 2, 'approved'),
('D''Nyonya Halal', 'District 1', 'Ho Chi Minh City', 'Vietnam', 10.7780, 106.7000, 'Malaysian, Halal', 'full', 1, 'HCA', 1, 1, 2, 'approved'),
('Saigon Halal Pho', 'District 5', 'Ho Chi Minh City', 'Vietnam', 10.7560, 106.6720, 'Halal Pho', 'full', 1, 'HCA', 1, 0, 1, 'approved'),

-- MANILA
('Hossein''s Persian Kebab', 'Greenbelt 3, Makati', 'Manila', 'Philippines', 14.5530, 121.0235, 'Persian, Iranian', 'full', 1, 'IDCP', 1, 0, 3, 'approved'),
('Aladdin Shawarma', 'Greenbelt, Makati', 'Manila', 'Philippines', 14.5535, 121.0238, 'Lebanese Shawarma', 'full', 1, 'IDCP', 1, 1, 2, 'approved'),
('Tomas Morato Halal', 'Quezon City', 'Manila', 'Philippines', 14.6320, 121.0340, 'Filipino, Halal', 'full', 1, 'IDCP', 1, 1, 2, 'approved'),

-- DHAKA
('Star Hotel & Kabab', 'Dhanmondi', 'Dhaka', 'Bangladesh', 23.7470, 90.3755, 'Bangladeshi, Mughlai', 'full', 1, 'BSTI', 1, 0, 1, 'approved'),
('Kasturi Restaurant', 'Purana Paltan', 'Dhaka', 'Bangladesh', 23.7300, 90.4090, 'Bangladeshi', 'full', 1, 'BSTI', 1, 1, 1, 'approved'),
('Nawabi Bhoj', 'Gulshan 2', 'Dhaka', 'Bangladesh', 23.7912, 90.4145, 'Mughlai, Biryani', 'full', 1, 'BSTI', 1, 1, 3, 'approved'),
('Haji Biryani', 'Nazira Bazar, Old Dhaka', 'Dhaka', 'Bangladesh', 23.7095, 90.4063, 'Dhakai Biryani', 'full', 1, 'BSTI', 1, 0, 1, 'approved'),
('Hotel Al Razzaque', 'North-South Road, Old Dhaka', 'Dhaka', 'Bangladesh', 23.7115, 90.4090, 'Bangladeshi, Mughlai', 'full', 1, 'BSTI', 1, 0, 1, 'approved'),

-- COLOMBO
('Pilawoos Restaurant', 'Galle Road', 'Colombo', 'Sri Lanka', 6.8950, 79.8580, 'Sri Lankan, Kottu', 'full', 1, 'ACJU', 1, 1, 1, 'approved'),
('Hotel Nippon', 'Kollupitiya', 'Colombo', 'Sri Lanka', 6.9105, 79.8525, 'Sri Lankan, Halal', 'full', 1, 'ACJU', 1, 1, 2, 'approved'),
('Buhari Hotel', 'Sea Street', 'Colombo', 'Sri Lanka', 6.9388, 79.8557, 'Sri Lankan Muslim', 'full', 1, 'ACJU', 1, 0, 1, 'approved');
