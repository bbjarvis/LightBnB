--  Create tables for lightBnB
--  \i migrations/01_schema.sql

--  Define in order of least dependent to most dependent, least FK to most FK
--  includes DROP TABLE statements to run easily

DROP TABLE users IF EXISTS CASCADE;
DROP TABLE properties IF EXISTS CASCADE;
DROP TABLE reservations IF EXISTS CASCADE;
DROP TABLE property_reviews IF EXISTS CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
)

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  orner_id INTEGER NOT NULL REFERENCES user(id) ON DELTE CASCADE,
  
  title VARCHAR(255) NOT NULL,
  description TEXT,
  thumbnail_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  
  cost_per_night INTEGER NOT NULL DEFAULT 0,
  parking_spaces INTEGER NOT NULL DEFAULT 0,
  number_of_bathrooms INTEGER NOT NULL DEFAULT 0,
  number_of_bedrooms INTEGER NOT NULL DEFAULT 0,

  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL,

  active BOOLEAN NOT NULL
)

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  property_id INTEGER NOT NULL REFERENCES property(id) ON DELTE CASCADE,
  guest_id INTEGER NOT NULL REFERENCES user(id) ON DELTE CASCADE
)

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER NOT NULL REFERENCES user(id) ON DELTE CASCADE
  property_id INTEGER NOT NULL REFERENCES property(id) ON DELTE CASCADE,
  reservation_id INTEGER NOT NULL REFERENCES reservation(id) ON DELTE CASCADE,
  rating SMALLINT NOT NULL DEFAULT 0,
  message TEXT  
)

