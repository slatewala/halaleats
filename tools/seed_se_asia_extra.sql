-- HalalEats — Southeast Asia extras (Penang, Johor Bahru, Surabaya, Bandung, Yogyakarta, Phnom Penh, Yangon).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- PENANG
('Restoran Kapitan', 'Chulia Street', 'Penang', 'Malaysia', 5.4153, 100.3340, 'Indian Muslim, Tandoori', 'full', 1, 'JAKIM', 1, 1, 2, 'approved'),
('Hameediyah Restaurant', 'Campbell Street', 'Penang', 'Malaysia', 5.4170, 100.3325, 'Nasi Kandar (oldest)', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Restoran Tajuddin Hussain', 'Queen Street', 'Penang', 'Malaysia', 5.4150, 100.3360, 'Nasi Kandar', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Line Clear Nasi Kandar', 'Penang Road', 'Penang', 'Malaysia', 5.4170, 100.3300, 'Nasi Kandar', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Restoran Daun Pisang', 'Greenhall', 'Penang', 'Malaysia', 5.4170, 100.3380, 'Nasi Daun Pisang, South Indian', 'full', 1, 'JAKIM', 0, 1, 1, 'approved'),

-- JOHOR BAHRU
('Restoran Tepian Tebrau', 'Tebrau', 'Johor Bahru', 'Malaysia', 1.5015, 103.7720, 'Malay Seafood', 'full', 1, 'JAKIM', 1, 1, 2, 'approved'),
('Daun Pisang JB', 'Taman Sentosa', 'Johor Bahru', 'Malaysia', 1.4860, 103.7530, 'Indian Muslim', 'full', 1, 'JAKIM', 1, 1, 1, 'approved'),
('Restoran Hua Mui', 'Trus Road', 'Johor Bahru', 'Malaysia', 1.4595, 103.7615, 'Hainanese, Halal Options', 'partial', 0, '', 0, 1, 1, 'approved'),
('Mat King Fish JB', 'Skudai', 'Johor Bahru', 'Malaysia', 1.5320, 103.6620, 'Malay Seafood', 'full', 1, 'JAKIM', 1, 0, 2, 'approved'),

-- SURABAYA
('Sate Klopo Ondomohen', 'Walikota Mustajab Street', 'Surabaya', 'Indonesia', -7.2580, 112.7470, 'Sate, Indonesian', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Bebek Sinjay', 'Surabaya', 'Surabaya', 'Indonesia', -7.2575, 112.7520, 'Bebek, Madurese', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Rawon Setan', 'Embong Malang', 'Surabaya', 'Indonesia', -7.2670, 112.7390, 'Rawon, East Java', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Soto Ambengan Pak Sadi', 'Ambengan', 'Surabaya', 'Indonesia', -7.2515, 112.7480, 'Soto Ayam', 'full', 1, 'MUI', 1, 0, 1, 'approved'),

-- BANDUNG
('Sate Maranggi Hj Yetty', 'Padalarang', 'Bandung', 'Indonesia', -6.8400, 107.4710, 'Sate Maranggi', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Mie Kocok Mang Dadeng', 'Kebon Kalapa', 'Bandung', 'Indonesia', -6.9230, 107.6090, 'Mie Kocok, Sundanese', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Bakso Cuanki Serayu', 'Serayu Street', 'Bandung', 'Indonesia', -6.9120, 107.6125, 'Bakso, Indonesian', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Warung Nasi Ampera', 'Soekarno-Hatta', 'Bandung', 'Indonesia', -6.9610, 107.6680, 'Sundanese', 'full', 1, 'MUI', 1, 1, 1, 'approved'),

-- YOGYAKARTA
('Gudeg Yu Djum', 'Wijilan / multiple', 'Yogyakarta', 'Indonesia', -7.8060, 110.3690, 'Gudeg, Javanese', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Sate Klatak Pak Pong', 'Bantul', 'Yogyakarta', 'Indonesia', -7.8810, 110.3290, 'Sate Klatak', 'full', 1, 'MUI', 1, 0, 1, 'approved'),
('Bale Raos', 'Magangan, Kraton', 'Yogyakarta', 'Indonesia', -7.8060, 110.3640, 'Royal Javanese', 'full', 1, 'MUI', 1, 1, 3, 'approved'),
('Ayam Goreng Mbok Berek', 'Wonosari Road', 'Yogyakarta', 'Indonesia', -7.8000, 110.3920, 'Fried Chicken, Javanese', 'full', 1, 'MUI', 1, 0, 1, 'approved'),

-- PHNOM PENH
('Cham Halal Restaurant', 'Boeung Keng Kang', 'Phnom Penh', 'Cambodia', 11.5520, 104.9230, 'Cham Muslim, Khmer', 'full', 1, 'CMA', 1, 1, 2, 'approved'),
('Karim Halal Restaurant', 'Sisowath Quay', 'Phnom Penh', 'Cambodia', 11.5710, 104.9320, 'Indian, Halal', 'full', 1, 'CMA', 1, 1, 2, 'approved'),

-- YANGON
('Mandalay Restaurant', 'Anawrahta Road', 'Yangon', 'Myanmar', 16.7805, 96.1530, 'Burmese, Halal Options', 'partial', 0, '', 1, 1, 2, 'approved'),
('Nilar Biryani', '216 Anawrahta Road', 'Yangon', 'Myanmar', 16.7790, 96.1485, 'Indian Burmese Biryani', 'full', 1, 'IRC Myanmar', 1, 0, 1, 'approved'),
('Karachi Restaurant Yangon', 'Bo Aung Kyaw Street', 'Yangon', 'Myanmar', 16.7770, 96.1600, 'Pakistani', 'full', 1, 'IRC Myanmar', 1, 0, 2, 'approved');
