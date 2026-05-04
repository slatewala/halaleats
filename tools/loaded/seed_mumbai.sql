-- HalalEats — Mumbai halal restaurants seed (60 entries).
-- Source: well-known halal eateries across Mumbai.
-- Coordinates approximate. Status=approved.

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES
-- Colaba / Fort / South Mumbai
('Bademiya', 'Tulloch Road, Apollo Bandar, Colaba', 'Mumbai', 'India', 18.9220, 72.8326, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Olympia Coffee House', 'Rahim Mansion, Colaba Causeway', 'Mumbai', 'India', 18.9183, 72.8324, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 1, 'approved'),
('Cafe Excelsior', 'AK Naik Marg, Fort', 'Mumbai', 'India', 18.9335, 72.8333, 'Irani, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),
('Cafe Mondegar', 'Metro House, Colaba Causeway', 'Mumbai', 'India', 18.9211, 72.8316, 'Continental, Goan', 'partial', 0, '', 0, 1, 2, 'approved'),
('Khyber', '145 MG Road, Kala Ghoda, Fort', 'Mumbai', 'India', 18.9290, 72.8323, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 4, 'approved'),
('Ayub''s', 'Rope Walk Lane, Kala Ghoda', 'Mumbai', 'India', 18.9282, 72.8319, 'Rolls, Sandwiches', 'full', 0, '', 1, 0, 1, 'approved'),
('Modern Lunch Home', 'Fort', 'Mumbai', 'India', 18.9335, 72.8350, 'Mangalorean, Seafood', 'partial', 0, '', 0, 0, 2, 'approved'),

-- Bhendi Bazaar / Mohammed Ali Road
('Noor Mohammadi Hotel', '179 Wazir Building, Bhendi Bazaar', 'Mumbai', 'India', 18.9595, 72.8333, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Shalimar Restaurant', 'Bhendi Bazaar, Mohammed Ali Road', 'Mumbai', 'India', 18.9580, 72.8326, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Imran Restaurant', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9540, 72.8330, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 2, 'approved'),
('Mughlai Mahal', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9572, 72.8328, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Tawakkal Sweets', 'Mohammed Ali Road, Bhendi Bazaar', 'Mumbai', 'India', 18.9583, 72.8327, 'Sweets, Mithai', 'full', 0, '', 0, 1, 1, 'approved'),
('Suleman Usman Mithaiwala', '292 Mohammed Ali Road', 'Mumbai', 'India', 18.9564, 72.8330, 'Sweets, Mithai', 'full', 0, '', 0, 1, 1, 'approved'),
('Surti Bara Handi', 'Dimtimkar Road, Bhendi Bazaar', 'Mumbai', 'India', 18.9591, 72.8331, 'Surti, Nihari, Paya', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Imperial', 'JJ Junction, Mohammed Ali Road', 'Mumbai', 'India', 18.9558, 72.8329, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 2, 'approved'),
('India Hotel', 'JM Road, Bhendi Bazaar', 'Mumbai', 'India', 18.9587, 72.8324, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Karim''s Mumbai', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9568, 72.8329, 'Mughlai, Kebabs', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Yousuf Bhai Pakwala', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9560, 72.8332, 'Tandoori, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Hashim Tea Stall', 'Bhendi Bazaar', 'Mumbai', 'India', 18.9588, 72.8329, 'Tea, Snacks', 'full', 0, '', 0, 1, 1, 'approved'),
('Hotel Naaz', 'Pakmodia Street, Bhendi Bazaar', 'Mumbai', 'India', 18.9576, 72.8334, 'Mughlai, Tea', 'full', 0, '', 1, 0, 1, 'approved'),

-- Nagpada / Grant Road / Tardeo / Charni Road / Chowpatty
('Persian Darbar', 'Grant Road East', 'Mumbai', 'India', 18.9619, 72.8161, 'Mughlai, Persian', 'full', 0, '', 1, 0, 2, 'approved'),
('Sarvi', 'Dimtimkar Road, Nagpada', 'Mumbai', 'India', 18.9685, 72.8265, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe Noorani', 'Tardeo Junction', 'Mumbai', 'India', 18.9697, 72.8118, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Khaiber', 'Chowpatty Sea Face', 'Mumbai', 'India', 18.9544, 72.8128, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Mahal', 'Charni Road', 'Mumbai', 'India', 18.9512, 72.8197, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Haji Ali Juice Centre', 'Lala Lajpat Rai Road, Haji Ali', 'Mumbai', 'India', 18.9824, 72.8087, 'Juices, Sandwiches', 'full', 0, '', 0, 1, 1, 'approved'),
('Hotel New Light', 'Bellasis Road, Nagpada', 'Mumbai', 'India', 18.9676, 72.8275, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Crystal', 'Grant Road', 'Mumbai', 'India', 18.9624, 72.8158, 'Punjabi, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),

-- Mahim / Dadar / Matunga
('Jaffer Bhai''s Delhi Darbar', 'Mahim West', 'Mumbai', 'India', 19.0410, 72.8400, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Persian Darbar Dadar', 'Dadar West', 'Mumbai', 'India', 19.0190, 72.8429, 'Persian, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Kutchi King', 'Mahim', 'Mumbai', 'India', 19.0420, 72.8403, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Daawat', 'Mahim', 'Mumbai', 'India', 19.0431, 72.8411, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- Bandra / Khar / Santa Cruz
('Lucky Restaurant', 'SV Road, Bandra West', 'Mumbai', 'India', 19.0596, 72.8295, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hyderabad Zaiqa', 'Carter Road, Bandra West', 'Mumbai', 'India', 19.0653, 72.8245, 'Hyderabadi, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Kakori House', 'Linking Road, Bandra West', 'Mumbai', 'India', 19.0613, 72.8313, 'Awadhi, Kebabs', 'full', 0, '', 1, 0, 3, 'approved'),
('Persian Durbar Khar', 'Khar West', 'Mumbai', 'India', 19.0727, 72.8350, 'Persian, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Saffron Spice', 'Linking Road, Khar', 'Mumbai', 'India', 19.0708, 72.8345, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved'),
('Sandwich Master', 'Bandra West', 'Mumbai', 'India', 19.0596, 72.8311, 'Sandwiches, Snacks', 'full', 0, '', 0, 1, 1, 'approved'),
('Hotel Highway Inn', 'Bandra Reclamation', 'Mumbai', 'India', 19.0510, 72.8270, 'Konkani, Seafood', 'partial', 0, '', 0, 0, 2, 'approved'),
('Bombay Adda', 'Bandra West', 'Mumbai', 'India', 19.0613, 72.8307, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 3, 'approved'),

-- Andheri / Jogeshwari / Goregaon / Kandivali
('The Mughal Room', 'Andheri West', 'Mumbai', 'India', 19.1197, 72.8464, 'Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Behrouz Biryani Andheri', 'Andheri East', 'Mumbai', 'India', 19.1136, 72.8697, 'Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Persian Durbar Andheri', 'Andheri West', 'Mumbai', 'India', 19.1187, 72.8453, 'Persian, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Sayba', 'Andheri East', 'Mumbai', 'India', 19.1098, 72.8728, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Imran Khan Restaurant', 'Jogeshwari West', 'Mumbai', 'India', 19.1364, 72.8429, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Aliya', 'Goregaon West', 'Mumbai', 'India', 19.1641, 72.8467, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 2, 'approved'),
('Khan Saheb', 'Kandivali West', 'Mumbai', 'India', 19.2042, 72.8404, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Charcoal Eats Powai', 'Powai', 'Mumbai', 'India', 19.1196, 72.9051, 'Biryani, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),

-- Kurla / Govandi / Chembur / Mankhurd
('Hotel Mehfil', 'LBS Marg, Kurla West', 'Mumbai', 'India', 19.0716, 72.8800, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Café Hyderabadi', 'Kurla West', 'Mumbai', 'India', 19.0735, 72.8812, 'Hyderabadi, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Salam', 'Govandi', 'Mumbai', 'India', 19.0560, 72.9180, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Madina', 'Mankhurd', 'Mumbai', 'India', 19.0496, 72.9237, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Shabnam', 'Chembur', 'Mumbai', 'India', 19.0625, 72.8997, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- Mumbra / Bhiwandi / Distant
('Pakwan Restaurant Mumbra', 'Kausa, Mumbra', 'Mumbai', 'India', 19.1830, 73.0260, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Al Sultan', 'Mumbra Station Road', 'Mumbai', 'India', 19.1805, 73.0276, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Bismillah Hotel', 'Bhiwandi', 'Mumbai', 'India', 19.2812, 73.0483, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),

-- Misc famous
('Britannia & Co', 'Wakefield House, Ballard Estate', 'Mumbai', 'India', 18.9367, 72.8396, 'Parsi, Berry Pulao', 'partial', 0, '', 0, 0, 3, 'approved'),
('Gulshan-e-Iran', 'Crawford Market', 'Mumbai', 'India', 18.9474, 72.8347, 'Irani, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Star Restaurant', 'Bohra Mohalla, Bhendi Bazaar', 'Mumbai', 'India', 18.9595, 72.8331, 'Bohri, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Faiz', 'Pydhonie', 'Mumbai', 'India', 18.9525, 72.8331, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Daawat-e-Zaika', 'Mira Road', 'Mumbai', 'India', 19.2952, 72.8544, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved');
