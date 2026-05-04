-- HalalEats — India halal restaurants seed (Delhi, Hyderabad, Bengaluru, Lucknow, Kolkata).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- DELHI
('Karim''s Jama Masjid', 'Gali Kababian, Jama Masjid', 'Delhi', 'India', 28.6505, 77.2334, 'Mughlai, Kebabs', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Al Jawahar', 'Matia Mahal Bazaar, Jama Masjid', 'Delhi', 'India', 28.6507, 77.2330, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Aslam Chicken', 'Matia Mahal, Jama Masjid', 'Delhi', 'India', 28.6510, 77.2335, 'Tandoori, Butter Chicken', 'full', 0, '', 1, 0, 2, 'approved'),
('Babu Bhai''s Kebab', 'Matia Mahal, Jama Masjid', 'Delhi', 'India', 28.6502, 77.2332, 'Kebabs, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),
('Moti Mahal Daryaganj', 'Netaji Subhash Marg, Daryaganj', 'Delhi', 'India', 28.6433, 77.2402, 'Mughlai, Tandoori', 'full', 0, '', 1, 0, 3, 'approved'),
('Karim''s Nizamuddin', 'Hazrat Nizamuddin Basti', 'Delhi', 'India', 28.5910, 77.2435, 'Mughlai', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Bukhara', 'ITC Maurya, Sardar Patel Marg', 'Delhi', 'India', 28.5930, 77.1727, 'NW Frontier, Tandoori', 'full', 0, '', 1, 0, 5, 'approved'),
('Dum Pukht', 'ITC Maurya, Sardar Patel Marg', 'Delhi', 'India', 28.5930, 77.1730, 'Awadhi, Lucknowi', 'full', 0, '', 1, 0, 5, 'approved'),
('Khan Chacha', 'Khan Market', 'Delhi', 'India', 28.5985, 77.2270, 'Kebabs, Rolls', 'full', 0, '', 1, 0, 2, 'approved'),
('Pind Balluchi', 'Connaught Place', 'Delhi', 'India', 28.6313, 77.2188, 'NW Frontier, Punjabi', 'full', 0, '', 1, 0, 3, 'approved'),
('Kake-da-Hotel', 'Connaught Place', 'Delhi', 'India', 28.6315, 77.2200, 'Punjabi', 'full', 0, '', 1, 0, 2, 'approved'),
('Saleem''s', 'Nizamuddin', 'Delhi', 'India', 28.5915, 77.2440, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Changezi Chicken', 'Daryaganj', 'Delhi', 'India', 28.6435, 77.2395, 'Mughlai, Chicken', 'full', 0, '', 1, 0, 2, 'approved'),
('Dilli Darbar', 'Daryaganj', 'Delhi', 'India', 28.6437, 77.2398, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Naz Restaurant', 'Jama Masjid', 'Delhi', 'India', 28.6504, 77.2342, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Gulati Restaurant', 'Pandara Road', 'Delhi', 'India', 28.6118, 77.2310, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 3, 'approved'),
('Tunday Kababi Delhi', 'Lajpat Nagar', 'Delhi', 'India', 28.5694, 77.2386, 'Awadhi, Galouti', 'full', 0, '', 1, 0, 2, 'approved'),

-- HYDERABAD
('Paradise Restaurant', 'Sardar Patel Road, Secunderabad', 'Hyderabad', 'India', 17.4399, 78.4983, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 3, 'approved'),
('Bawarchi', 'RTC X Roads, Chikkadpally', 'Hyderabad', 'India', 17.4030, 78.4872, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Shah Ghouse Cafe', 'Tolichowki', 'Hyderabad', 'India', 17.3915, 78.4034, 'Hyderabadi, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Shadab', 'Madina Building, Charminar', 'Hyderabad', 'India', 17.3613, 78.4747, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe Bahar', 'Basheerbagh', 'Hyderabad', 'India', 17.4023, 78.4763, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Sohail', 'Tolichowki', 'Hyderabad', 'India', 17.3923, 78.4028, 'Hyderabadi, Arabic', 'full', 0, '', 1, 0, 2, 'approved'),
('Pista House', 'Charminar', 'Hyderabad', 'India', 17.3608, 78.4734, 'Sweets, Haleem, Biryani', 'full', 1, 'Telangana State Halal', 1, 0, 2, 'approved'),
('Hyderabad House', 'Banjara Hills', 'Hyderabad', 'India', 17.4150, 78.4348, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Cafe 555', 'Tolichowki', 'Hyderabad', 'India', 17.3920, 78.4040, 'Arabic, Mandi', 'full', 0, '', 1, 0, 2, 'approved'),
('Mehfil', 'Banjara Hills Road 3', 'Hyderabad', 'India', 17.4180, 78.4350, 'Hyderabadi, Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Alpha Hotel', 'Secunderabad Station', 'Hyderabad', 'India', 17.4330, 78.5026, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Niagara Restaurant', 'Mehdipatnam', 'Hyderabad', 'India', 17.3964, 78.4374, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Fusion 9', 'Banjara Hills', 'Hyderabad', 'India', 17.4150, 78.4280, 'Multi, Hyderabadi', 'full', 0, '', 1, 0, 4, 'approved'),
('Spicy Venue', 'Hi-Tech City', 'Hyderabad', 'India', 17.4485, 78.3815, 'Hyderabadi, North Indian', 'full', 0, '', 1, 0, 3, 'approved'),

-- BENGALURU
('Empire Restaurant', 'Brigade Road', 'Bengaluru', 'India', 12.9719, 77.6068, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Meghana Foods', 'Indiranagar', 'Bengaluru', 'India', 12.9719, 77.6411, 'Andhra, Biryani', 'partial', 0, '', 1, 0, 2, 'approved'),
('Khan Saheb Grilled Chicken', 'Koramangala', 'Bengaluru', 'India', 12.9352, 77.6245, 'Tandoori, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Albert Bakery', 'Mosque Road, Frazer Town', 'Bengaluru', 'India', 12.9967, 77.6097, 'Bakery, Snacks', 'full', 0, '', 0, 0, 1, 'approved'),
('Charminar Restaurant', 'Mosque Road, Frazer Town', 'Bengaluru', 'India', 12.9970, 77.6094, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Kream & Krunch', 'Frazer Town', 'Bengaluru', 'India', 12.9985, 77.6105, 'Continental, Bakery', 'full', 0, '', 0, 0, 2, 'approved'),
('Pista House Bengaluru', 'Frazer Town', 'Bengaluru', 'India', 12.9982, 77.6103, 'Sweets, Haleem', 'full', 0, '', 1, 0, 2, 'approved'),
('Hyderabad Biryani House', 'JP Nagar', 'Bengaluru', 'India', 12.9067, 77.5874, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Imperial Restaurant', 'Residency Road', 'Bengaluru', 'India', 12.9716, 77.6033, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved'),
('Karama Restaurant', 'Indiranagar', 'Bengaluru', 'India', 12.9784, 77.6408, 'Arabic, Mandi', 'full', 0, '', 1, 0, 2, 'approved'),
('Zafran', 'UB City Mall', 'Bengaluru', 'India', 12.9719, 77.5946, 'Mughlai, Awadhi', 'full', 0, '', 1, 0, 4, 'approved'),
('Hotel Savoury', 'Mosque Road', 'Bengaluru', 'India', 12.9971, 77.6098, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),

-- LUCKNOW
('Tunday Kababi', 'Aminabad, Old Lucknow', 'Lucknow', 'India', 26.8508, 80.9354, 'Galouti Kebab, Awadhi', 'full', 0, '', 1, 0, 2, 'approved'),
('Idris Biryani', 'Raja Bazaar, Chowk', 'Lucknow', 'India', 26.8675, 80.9089, 'Awadhi Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Wahid Biryani', 'Aminabad', 'Lucknow', 'India', 26.8517, 80.9357, 'Awadhi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Dastarkhwan', 'Hazratganj', 'Lucknow', 'India', 26.8540, 80.9419, 'Awadhi, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Mubin''s', 'Akbari Gate', 'Lucknow', 'India', 26.8678, 80.9092, 'Awadhi, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Royal Cafe', 'Hazratganj', 'Lucknow', 'India', 26.8543, 80.9421, 'Awadhi, Continental', 'full', 0, '', 1, 0, 3, 'approved'),
('Nameh Khazana', 'Gomti Nagar', 'Lucknow', 'India', 26.8551, 81.0017, 'Awadhi, Mughlai', 'full', 0, '', 1, 0, 3, 'approved'),
('Sakhawat', 'Old Lucknow', 'Lucknow', 'India', 26.8680, 80.9098, 'Awadhi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- KOLKATA
('Aminia Zakaria Street', 'Zakaria Street, Burrabazar', 'Kolkata', 'India', 22.5806, 88.3550, 'Mughlai Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Aminia Esplanade', 'SN Banerjee Road, Esplanade', 'Kolkata', 'India', 22.5641, 88.3520, 'Mughlai Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Royal Indian Hotel', 'Chitpur Road', 'Kolkata', 'India', 22.5818, 88.3540, 'Awadhi, Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Sufia Restaurant', 'Esplanade', 'Kolkata', 'India', 22.5645, 88.3525, 'Mughlai Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Arsalan Park Circus', 'Park Circus', 'Kolkata', 'India', 22.5398, 88.3697, 'Mughlai Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Shiraz Golden Restaurant', 'Park Street', 'Kolkata', 'India', 22.5492, 88.3614, 'Mughlai Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Rahmaniya', 'Park Circus', 'Kolkata', 'India', 22.5395, 88.3700, 'Mughlai, Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Zeeshan', 'Park Circus', 'Kolkata', 'India', 22.5400, 88.3705, 'Mughlai Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Adam''s Kebab', 'Zakaria Street', 'Kolkata', 'India', 22.5810, 88.3553, 'Kebabs, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Nizam''s', 'Hogg Street, New Market', 'Kolkata', 'India', 22.5640, 88.3514, 'Kathi Rolls, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),
('Haji Saheb Biryani', 'Esplanade', 'Kolkata', 'India', 22.5642, 88.3526, 'Mughlai Biryani', 'full', 0, '', 1, 0, 1, 'approved');
