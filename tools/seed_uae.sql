-- HalalEats — UAE halal restaurants seed (Dubai, Abu Dhabi, Sharjah).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- DUBAI
('Al Ustad Special Kabab', 'Al Mussallah Road, Bur Dubai', 'Dubai', 'UAE', 25.2570, 55.2916, 'Iranian, Kebabs', 'full', 1, 'Dubai Municipality', 1, 0, 2, 'approved'),
('Ravi Restaurant', 'Satwa, Al Hudaiba', 'Dubai', 'UAE', 25.2387, 55.2724, 'Pakistani', 'full', 1, 'Dubai Municipality', 1, 1, 1, 'approved'),
('Bu Qtair', 'Fishing Harbour 2, Jumeirah', 'Dubai', 'UAE', 25.2010, 55.2399, 'Seafood', 'full', 0, '', 0, 0, 2, 'approved'),
('Al Mallah', '2nd December Street, Satwa', 'Dubai', 'UAE', 25.2360, 55.2700, 'Lebanese', 'full', 1, 'Dubai Municipality', 1, 1, 1, 'approved'),
('Reem Al Bawadi', 'JBR, Marina', 'Dubai', 'UAE', 25.0795, 55.1399, 'Lebanese, Arabic', 'full', 1, 'Dubai Municipality', 1, 1, 3, 'approved'),
('Pind Balluchi Karama', 'Karama', 'Dubai', 'UAE', 25.2510, 55.3019, 'Indian, Punjabi', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Aroos Damascus', 'Al Muraqqabat, Deira', 'Dubai', 'UAE', 25.2655, 55.3216, 'Syrian, Arabic', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Special Ostadi', 'Al Musalla Road, Bur Dubai', 'Dubai', 'UAE', 25.2575, 55.2920, 'Iranian, Kebabs', 'full', 1, 'Dubai Municipality', 1, 0, 2, 'approved'),
('Allo Beirut', 'JBR Walk', 'Dubai', 'UAE', 25.0810, 55.1430, 'Lebanese', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Logma', 'BoxPark, Al Wasl Road', 'Dubai', 'UAE', 25.1872, 55.2470, 'Khaleeji, Emirati', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Operation Falafel', 'JBR Walk', 'Dubai', 'UAE', 25.0805, 55.1420, 'Lebanese, Falafel', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Filli Cafe', 'JBR / multiple', 'Dubai', 'UAE', 25.0815, 55.1415, 'Cafe, Tea, Snacks', 'full', 1, 'Dubai Municipality', 0, 1, 1, 'approved'),
('Khyber Restaurant', 'Marina', 'Dubai', 'UAE', 25.0810, 55.1395, 'Indian, Mughlai', 'full', 1, 'Dubai Municipality', 1, 1, 4, 'approved'),
('Karama Restaurant Dubai', 'Karama', 'Dubai', 'UAE', 25.2495, 55.3025, 'Indian, Mughlai', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Al Reef Lebanese Bakery', 'Karama', 'Dubai', 'UAE', 25.2520, 55.3010, 'Lebanese Bakery', 'full', 1, 'Dubai Municipality', 0, 1, 1, 'approved'),
('Calicut Paragon', 'Al Karama', 'Dubai', 'UAE', 25.2483, 55.3070, 'Kerala, Malabari', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('The Meat Co', 'Souk Madinat Jumeirah', 'Dubai', 'UAE', 25.1335, 55.1860, 'Steakhouse', 'full', 1, 'Dubai Municipality', 1, 0, 4, 'approved'),
('Eric''s', 'Karama', 'Dubai', 'UAE', 25.2502, 55.3030, 'Goan, Indian', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),
('Bait Maryam', 'Cluster P, JLT', 'Dubai', 'UAE', 25.0703, 55.1402, 'Levantine', 'full', 1, 'Dubai Municipality', 1, 1, 4, 'approved'),
('Zaroob', 'Sheikh Zayed Road', 'Dubai', 'UAE', 25.2197, 55.2803, 'Lebanese Street Food', 'full', 1, 'Dubai Municipality', 1, 1, 2, 'approved'),

-- ABU DHABI
('Al Ibrahimi', 'Tourist Club Area', 'Abu Dhabi', 'UAE', 24.4894, 54.3733, 'Pakistani', 'full', 1, 'ESMA', 1, 1, 1, 'approved'),
('Bait El Khetyar', 'Khalifa City', 'Abu Dhabi', 'UAE', 24.4205, 54.5832, 'Emirati', 'full', 0, '', 1, 1, 2, 'approved'),
('Burgerheart', 'Al Wahda', 'Abu Dhabi', 'UAE', 24.4731, 54.3700, 'Burger', 'full', 0, '', 0, 0, 2, 'approved'),
('Sheba Restaurant', 'Al Markaziyah', 'Abu Dhabi', 'UAE', 24.4910, 54.3690, 'Yemeni, Mandi', 'full', 1, 'ESMA', 1, 0, 2, 'approved'),
('Al Mrzab Restaurant', 'Hamdan Street', 'Abu Dhabi', 'UAE', 24.4924, 54.3656, 'Kuwaiti, Arabic', 'full', 1, 'ESMA', 1, 0, 2, 'approved'),
('Ushna Persian', 'Souk Qaryat Al Beri', 'Abu Dhabi', 'UAE', 24.4118, 54.5067, 'Persian, Iranian', 'full', 1, 'ESMA', 1, 0, 4, 'approved'),
('Mezlai', 'Emirates Palace', 'Abu Dhabi', 'UAE', 24.4615, 54.3170, 'Emirati', 'full', 1, 'ESMA', 1, 0, 5, 'approved'),
('Lebanese Flower', 'Khalidiyah', 'Abu Dhabi', 'UAE', 24.4730, 54.3490, 'Lebanese', 'full', 1, 'ESMA', 1, 1, 2, 'approved'),
('Al Dhafra Restaurant', 'Mina Zayed', 'Abu Dhabi', 'UAE', 24.5148, 54.3678, 'Emirati, Seafood', 'full', 1, 'ESMA', 0, 0, 3, 'approved'),
('Cafe Arabia', 'Mubarak Bin Mohammed Street', 'Abu Dhabi', 'UAE', 24.4671, 54.3620, 'Cafe, Arabic', 'full', 1, 'ESMA', 1, 1, 2, 'approved'),
('Tarbush', 'Khalidiyah Mall', 'Abu Dhabi', 'UAE', 24.4759, 54.3430, 'Lebanese', 'full', 1, 'ESMA', 1, 1, 2, 'approved'),
('Layali Restaurant', 'Hamdan Street', 'Abu Dhabi', 'UAE', 24.4925, 54.3660, 'Lebanese', 'full', 1, 'ESMA', 1, 1, 2, 'approved'),

-- SHARJAH
('Sadaf Restaurant', 'Al Majaz Waterfront', 'Sharjah', 'UAE', 25.3290, 55.3818, 'Iranian, Persian', 'full', 1, 'ESMA', 1, 0, 3, 'approved'),
('Al Halabi', 'King Faisal Street', 'Sharjah', 'UAE', 25.3550, 55.3905, 'Lebanese, Syrian', 'full', 1, 'ESMA', 1, 1, 2, 'approved'),
('Al Salam Restaurant', 'Rolla Square', 'Sharjah', 'UAE', 25.3535, 55.3810, 'Pakistani, Indian', 'full', 1, 'ESMA', 1, 1, 1, 'approved'),
('Wadi Al Jow', 'Al Khan', 'Sharjah', 'UAE', 25.3367, 55.3743, 'Yemeni, Mandi', 'full', 1, 'ESMA', 1, 0, 2, 'approved');
