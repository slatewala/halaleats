-- HalalEats — Oceania extras (Brisbane, Perth, Adelaide, Auckland NZ, Wellington).

INSERT INTO he_restaurants
(name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, status)
VALUES

-- BRISBANE
('Spices of Punjab', 'Sunnybank', 'Brisbane', 'Australia', -27.5870, 153.0570, 'Indian, Pakistani', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Garden City Halal Bites', 'Mount Gravatt', 'Brisbane', 'Australia', -27.5530, 153.0790, 'Mediterranean', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Kuluba Lounge', 'West End', 'Brisbane', 'Australia', -27.4830, 153.0080, 'Turkish', 'full', 1, 'AFIC', 1, 1, 3, 'approved'),
('Persian Cottage', 'Logan', 'Brisbane', 'Australia', -27.6390, 153.1090, 'Persian', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),

-- PERTH
('Cinnamon & Chutney', 'Northbridge', 'Perth', 'Australia', -31.9460, 115.8590, 'Indian, Halal', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Jus Burgers Halal', 'Subiaco', 'Perth', 'Australia', -31.9485, 115.8240, 'Halal Burgers', 'full', 1, 'AFIC', 1, 0, 2, 'approved'),
('Aladdin''s Cave', 'Northbridge', 'Perth', 'Australia', -31.9468, 115.8572, 'Middle Eastern', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('Anatolia Restaurant', 'Mirrabooka', 'Perth', 'Australia', -31.8740, 115.8665, 'Turkish', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),

-- ADELAIDE
('Punjabi Tandoori', 'Hindley Street', 'Adelaide', 'Australia', -34.9255, 138.5970, 'Indian, Pakistani', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),
('1991 Halal Snack Pack', 'Multiple', 'Adelaide', 'Australia', -34.9285, 138.6005, 'HSP, Mediterranean', 'full', 1, 'AFIC', 1, 0, 1, 'approved'),
('Saray Turkish', 'Salisbury', 'Adelaide', 'Australia', -34.7660, 138.6395, 'Turkish', 'full', 1, 'AFIC', 1, 1, 2, 'approved'),

-- AUCKLAND
('Paradise Indian Restaurant', 'Sandringham Road', 'Auckland', 'New Zealand', -36.8780, 174.7330, 'Indian, Pakistani', 'full', 1, 'FIANZ', 1, 1, 2, 'approved'),
('Eden Kebabs', 'Mt Eden', 'Auckland', 'New Zealand', -36.8780, 174.7610, 'Turkish, Halal', 'full', 1, 'FIANZ', 1, 1, 1, 'approved'),
('Al Madina Restaurant', 'New North Road', 'Auckland', 'New Zealand', -36.8770, 174.7405, 'Lebanese, Halal', 'full', 1, 'FIANZ', 1, 1, 2, 'approved'),
('Star of India Auckland', 'Broadway, Newmarket', 'Auckland', 'New Zealand', -36.8700, 174.7770, 'Indian', 'full', 1, 'FIANZ', 1, 1, 3, 'approved'),

-- WELLINGTON
('Aunty Mena''s', 'Cuba Street', 'Wellington', 'New Zealand', -41.2940, 174.7770, 'Vegetarian Asian, Halal Veg', 'full', 1, 'FIANZ', 0, 1, 1, 'approved'),
('Punjabi Zaika', 'Tory Street', 'Wellington', 'New Zealand', -41.2950, 174.7790, 'Punjabi', 'full', 1, 'FIANZ', 1, 1, 2, 'approved');
