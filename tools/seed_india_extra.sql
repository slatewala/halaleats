-- HalalEats — More India cities (Aligarh, Aurangabad, Bhopal, Srinagar, Kochi, Chennai, Pune, Ahmedabad, Jaipur, Varanasi).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- ALIGARH
('Hotel Sanmar', 'Centre Point', 'Aligarh', 'India', 27.8833, 78.0780, 'Mughlai, North Indian', 'full', 0, '', 1, 0, 2, 'approved'),
('Sai Restaurant', 'Marris Road', 'Aligarh', 'India', 27.8810, 78.0808, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Hotel Mughal Garden', 'Civil Lines', 'Aligarh', 'India', 27.8855, 78.0775, 'Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),

-- AURANGABAD
('Bhoj Restaurant', 'Adalat Road', 'Aurangabad', 'India', 19.8762, 75.3433, 'Mughlai, Hyderabadi', 'full', 0, '', 1, 0, 2, 'approved'),
('Tandoor Restaurant', 'Connaught Place', 'Aurangabad', 'India', 19.8765, 75.3437, 'Tandoori, Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Madina', 'Town Centre', 'Aurangabad', 'India', 19.8800, 75.3320, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),

-- BHOPAL
('Bafna Restaurant', 'New Market', 'Bhopal', 'India', 23.2330, 77.4055, 'Mughlai, Bhopali', 'full', 0, '', 1, 0, 2, 'approved'),
('Jameel Hotel', 'Ibrahimpura', 'Bhopal', 'India', 23.2680, 77.4030, 'Bhopali, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),
('Filfora Restaurant', 'Hamidia Road', 'Bhopal', 'India', 23.2615, 77.4050, 'Mughlai, Lebanese', 'full', 0, '', 1, 1, 2, 'approved'),
('Karim''s Bhopal', 'New Market', 'Bhopal', 'India', 23.2335, 77.4060, 'Mughlai, Kebabs', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Hotel Salaam Bhopal', 'Bhopal Talkies', 'Bhopal', 'India', 23.2620, 77.4180, 'Bhopali, Mughlai', 'full', 0, '', 1, 0, 1, 'approved'),

-- SRINAGAR
('Ahdoo''s', 'Residency Road', 'Srinagar', 'India', 34.0805, 74.8090, 'Kashmiri, Wazwan', 'full', 0, '', 1, 0, 3, 'approved'),
('Mughal Darbar', 'Residency Road', 'Srinagar', 'India', 34.0810, 74.8085, 'Kashmiri Wazwan', 'full', 0, '', 1, 0, 3, 'approved'),
('Shamyana Restaurant', 'Boulevard Road, Dal Lake', 'Srinagar', 'India', 34.0930, 74.8330, 'Kashmiri', 'full', 0, '', 1, 0, 2, 'approved'),
('Krishna Vaishno Dhaba', 'Durganag', 'Srinagar', 'India', 34.0825, 74.8053, 'Kashmiri Veg', 'full', 0, '', 0, 1, 1, 'approved'),
('Adoos Restaurant', 'Dal Gate', 'Srinagar', 'India', 34.0890, 74.8235, 'Kashmiri Wazwan', 'full', 0, '', 1, 0, 3, 'approved'),

-- KOCHI / KOZHIKODE
('Kayikka''s Biriyani', 'Mattancherry', 'Kochi', 'India', 9.9583, 76.2580, 'Malabari Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Salkara Restaurant', 'Marine Drive', 'Kochi', 'India', 9.9720, 76.2780, 'Kerala, Mughlai', 'full', 0, '', 1, 1, 2, 'approved'),
('Rahmath Hotel', 'Convent Road', 'Kochi', 'India', 9.9700, 76.2810, 'Malabari, Biryani', 'full', 0, '', 1, 0, 1, 'approved'),
('Paragon Restaurant', 'Kannur Road, Kozhikode', 'Kozhikode', 'India', 11.2590, 75.7800, 'Malabari, Seafood', 'full', 0, '', 1, 1, 2, 'approved'),
('Zain''s Hotel', 'Convent Cross Road, Kozhikode', 'Kozhikode', 'India', 11.2535, 75.7790, 'Malabari, Pathiri', 'full', 0, '', 1, 0, 1, 'approved'),

-- CHENNAI
('Buhari Hotel', 'Anna Salai', 'Chennai', 'India', 13.0598, 80.2598, 'South Indian Muslim', 'full', 0, '', 1, 0, 2, 'approved'),
('Star Biriyani', 'T Nagar', 'Chennai', 'India', 13.0418, 80.2345, 'Tamil Muslim Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Salem RR Briyani', 'Mylapore', 'Chennai', 'India', 13.0339, 80.2700, 'Salem Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Anjappar Chettinad', 'Multiple', 'Chennai', 'India', 13.0827, 80.2707, 'Chettinad', 'full', 0, '', 1, 0, 3, 'approved'),
('Madeena Hotel', 'Triplicane', 'Chennai', 'India', 13.0590, 80.2770, 'Tamil Muslim', 'full', 0, '', 1, 0, 1, 'approved'),

-- PUNE
('Blue Nile', 'Camp Area', 'Pune', 'India', 18.5145, 73.8800, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('George Restaurant', 'Camp', 'Pune', 'India', 18.5160, 73.8810, 'Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Dorabjee & Sons', 'Dhole Patil Road, Camp', 'Pune', 'India', 18.5212, 73.8853, 'Parsi, Mughlai', 'partial', 0, '', 0, 0, 2, 'approved'),
('Hyderabad Biryani Pune', 'Koregaon Park', 'Pune', 'India', 18.5358, 73.8930, 'Hyderabadi Biryani', 'full', 0, '', 1, 0, 2, 'approved'),
('Mohammedia Restaurant', 'Kondhwa', 'Pune', 'India', 18.4640, 73.8970, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved'),

-- AHMEDABAD
('Bhatiyar Gali Stalls', 'Bhatiyar Gali, Khanpur', 'Ahmedabad', 'India', 23.0400, 72.5790, 'Mughlai Street Food', 'full', 0, '', 1, 0, 1, 'approved'),
('Zaffran Restaurant', 'CG Road', 'Ahmedabad', 'India', 23.0290, 72.5605, 'Mughlai, North Indian', 'full', 0, '', 1, 1, 3, 'approved'),
('Karim''s Ahmedabad', 'CG Road', 'Ahmedabad', 'India', 23.0295, 72.5610, 'Mughlai', 'full', 1, 'Halal India', 1, 0, 2, 'approved'),
('Patang Restaurant', 'Ashram Road', 'Ahmedabad', 'India', 23.0340, 72.5680, 'Indian Multi-Cuisine', 'partial', 0, '', 0, 1, 4, 'approved'),

-- JAIPUR
('Niros', 'MI Road', 'Jaipur', 'India', 26.9195, 75.8170, 'Mughlai, Continental', 'full', 0, '', 1, 1, 3, 'approved'),
('LMB', 'Johari Bazar', 'Jaipur', 'India', 26.9230, 75.8270, 'Rajasthani Veg, Sweets', 'full', 0, '', 0, 1, 2, 'approved'),
('Handi Restaurant', 'MI Road', 'Jaipur', 'India', 26.9195, 75.8195, 'Mughlai, Rajasthani Non-Veg', 'full', 0, '', 1, 0, 3, 'approved'),
('Zolocrust', 'Hotel Clarks Amer, JLN Marg', 'Jaipur', 'India', 26.8580, 75.8035, 'Multi-Cuisine, Halal', 'full', 0, '', 1, 1, 4, 'approved'),

-- VARANASI
('Tunday Kababi Varanasi', 'Lahurabir', 'Varanasi', 'India', 25.3216, 83.0050, 'Awadhi Kebabs', 'full', 0, '', 1, 0, 2, 'approved'),
('Hotel Surya', 'Cantonment', 'Varanasi', 'India', 25.3270, 82.9885, 'Mughlai', 'full', 0, '', 1, 0, 2, 'approved'),
('Saheb Restaurant', 'Sigra', 'Varanasi', 'India', 25.3250, 82.9900, 'Mughlai, Biryani', 'full', 0, '', 1, 0, 2, 'approved');
