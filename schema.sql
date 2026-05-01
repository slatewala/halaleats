-- HalalEats schema
CREATE DATABASE IF NOT EXISTS halaleats CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE halaleats;

CREATE TABLE IF NOT EXISTS he_users (
  userid INT AUTO_INCREMENT PRIMARY KEY,
  account VARCHAR(120) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(120) NOT NULL,
  city VARCHAR(120) DEFAULT '',
  country VARCHAR(120) DEFAULT '',
  trust_score INT DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  last_login DATETIME NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS he_restaurants (
  rid INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  address VARCHAR(400) DEFAULT '',
  city VARCHAR(120) DEFAULT '',
  country VARCHAR(120) DEFAULT '',
  lat DECIMAL(10,7) NOT NULL,
  lng DECIMAL(10,7) NOT NULL,
  phone VARCHAR(40) DEFAULT '',
  website VARCHAR(255) DEFAULT '',
  cuisine VARCHAR(120) DEFAULT '',
  -- halal_type: full, partial, alcohol_served, none, unknown
  halal_type ENUM('full','partial','alcohol_served','none','unknown') DEFAULT 'unknown',
  certified TINYINT(1) DEFAULT 0,
  cert_body VARCHAR(160) DEFAULT '',
  veg_friendly TINYINT(1) DEFAULT 0,
  zabihah TINYINT(1) DEFAULT 0,
  price_level TINYINT DEFAULT 0,
  photo VARCHAR(255) DEFAULT '',
  submitted_by INT NULL,
  status ENUM('pending','approved','rejected') DEFAULT 'approved',
  avg_rating DECIMAL(3,2) DEFAULT 0,
  rating_count INT DEFAULT 0,
  verify_yes INT DEFAULT 0,
  verify_no INT DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_geo (lat, lng),
  INDEX idx_city (city),
  INDEX idx_status (status),
  FOREIGN KEY (submitted_by) REFERENCES he_users(userid) ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS he_reviews (
  reviewid INT AUTO_INCREMENT PRIMARY KEY,
  rid INT NOT NULL,
  userid INT NOT NULL,
  rating TINYINT NOT NULL,
  body TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uniq_user_rest (rid, userid),
  FOREIGN KEY (rid) REFERENCES he_restaurants(rid) ON DELETE CASCADE,
  FOREIGN KEY (userid) REFERENCES he_users(userid) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS he_verifications (
  vid INT AUTO_INCREMENT PRIMARY KEY,
  rid INT NOT NULL,
  userid INT NOT NULL,
  vote ENUM('yes','no') NOT NULL,
  note VARCHAR(255) DEFAULT '',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uniq_user_vote (rid, userid),
  FOREIGN KEY (rid) REFERENCES he_restaurants(rid) ON DELETE CASCADE,
  FOREIGN KEY (userid) REFERENCES he_users(userid) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS he_photos (
  pid INT AUTO_INCREMENT PRIMARY KEY,
  rid INT NOT NULL,
  userid INT NULL,
  url VARCHAR(255) NOT NULL,
  caption VARCHAR(255) DEFAULT '',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (rid) REFERENCES he_restaurants(rid) ON DELETE CASCADE,
  FOREIGN KEY (userid) REFERENCES he_users(userid) ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS he_favorites (
  userid INT NOT NULL,
  rid INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (userid, rid),
  FOREIGN KEY (userid) REFERENCES he_users(userid) ON DELETE CASCADE,
  FOREIGN KEY (rid) REFERENCES he_restaurants(rid) ON DELETE CASCADE
) ENGINE=InnoDB;
