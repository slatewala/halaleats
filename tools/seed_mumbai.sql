-- HalalEats — Famous Mumbai halal restaurants seed.
-- Source: well-known halal eateries (Bhendi Bazaar, Mohammed Ali Road, Bandra, Colaba).
-- Run via phpMyAdmin SQL tab.
-- Coordinates approximate. Status=approved.

INSERT IGNORE INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES
('Bademiya', 'Tulloch Road, Apollo Bandar, Colaba', 'Mumbai', 'India', 18.9220, 72.8326, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Persian Darbar', 'Grant Road East', 'Mumbai', 'India', 18.9619, 72.8161, 'Mughlai, Persian', 'full', 0, '', 1, 0, 2, 'approved'),
('Noor Mohammadi Hotel', '179 Wazir Building, Bhendi Bazaar', 'Mumbai', 'India', 18.9595, 72.8333, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Sarvi', 'Dimtimkar Road, Nagpada', 'Mumbai', 'India', 18.9685, 72.8265, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Shalimar Restaurant', 'Bhendi Bazaar, Mohammed Ali Road', 'Mumbai', 'India', 18.9580, 72.8326, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Khaiber', 'Chowpatty Sea Face', 'Mumbai', 'India', 18.9544, 72.8128, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe Noorani', 'Tardeo Junction', 'Mumbai', 'India', 18.9697, 72.8118, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Jaffer Bhai\'s Delhi Darbar', 'Mahim West', 'Mumbai', 'India', 19.0410, 72.8400, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Imran Restaurant', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9540, 72.8330, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 2, 'approved'),
('Tawakkal Sweets', 'Mohammed Ali Road, Bhendi Bazaar', 'Mumbai', 'India', 18.9583, 72.8327, 'Sweets, Mithai', 'full', 0, '', 0, 1, 1, 'approved'),
('Suleman Usman Mithaiwala', '292 Mohammed Ali Road', 'Mumbai', 'India', 18.9564, 72.8330, 'Sweets, Mithai', 'full', 0, '', 0, 1, 1, 'approved'),
('Mughlai Mahal', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9572, 72.8328, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Haji Ali Juice Centre', 'Lala Lajpat Rai Road, Haji Ali', 'Mumbai', 'India', 18.9824, 72.8087, 'Juices, Sandwiches', 'full', 0, '', 0, 1, 1, 'approved'),
('Olympia Coffee House', 'Rahim Mansion, Colaba Causeway', 'Mumbai', 'India', 18.9183, 72.8324, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 1, 'approved'),
('Cafe Excelsior', 'AK Naik Marg, Fort', 'Mumbai', 'India', 18.9335, 72.8333, 'Irani, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),
('Lucky Restaurant', 'SV Road, Bandra West', 'Mumbai', 'India', 19.0596, 72.8295, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Imperial', 'JJ Junction, Mohammed Ali Road', 'Mumbai', 'India', 18.9558, 72.8329, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 2, 'approved'),
('Surti Bara Handi', 'Dimtimkar Road, Bhendi Bazaar', 'Mumbai', 'India', 18.9591, 72.8331, 'Surti, Nihari, Paya', 'full', 0, '', 1, 0, 2, 'approved'),
('Pakwan Restaurant', 'Kausa, Mumbra', 'Mumbai', 'India', 19.1830, 73.0260, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('India Hotel', 'JM Road, Bhendi Bazaar', 'Mumbai', 'India', 18.9587, 72.8324, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Hyderabad Zaiqa', 'Carter Road, Bandra West', 'Mumbai', 'India', 19.0653, 72.8245, 'Hyderabadi, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Kakori House', 'Linking Road, Bandra West', 'Mumbai', 'India', 19.0613, 72.8313, 'Awadhi, Kebabs', 'full', 0, '', 1, 0, 3, 'approved'),
('The Mughal Room', 'Andheri West', 'Mumbai', 'India', 19.1197, 72.8464, 'Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Persian Durbar', 'Khar West', 'Mumbai', 'India', 19.0727, 72.8350, 'Persian, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Charcoal Eats', 'Powai', 'Mumbai', 'India', 19.1196, 72.9051, 'Biryani, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Behrouz Biryani', 'Andheri East', 'Mumbai', 'India', 19.1136, 72.8697, 'Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Persian Darbar Dadar', 'Dadar West', 'Mumbai', 'India', 19.0190, 72.8429, 'Persian, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Mahal', 'Charni Road', 'Mumbai', 'India', 18.9512, 72.8197, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Karim\'s', 'Mohammed Ali Road', 'Mumbai', 'India', 18.9568, 72.8329, 'Mughlai, Kebabs', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Saffron Spice', 'Linking Road, Khar', 'Mumbai', 'India', 19.0708, 72.8345, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved');
