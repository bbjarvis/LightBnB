--  Some fake seeds data for our database
--  \i seeds/01_seeds.sql

INSERT INTO users (name, email, password)
VALUES ('Brett', 'oncewascool@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Jessica', 'jessicastillcool@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Emmy and Billy', 'coolkids@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, 
parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Belgo House', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 
'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 50, 12, 3, 8, 'Canada', 'Belgo Road', 'Kelowna', 'BC', 'v1c1p9', true),
(2, 'Cool House', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 
'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 100, 5, 3, 3, 'Canada', 'Cool Road', 'White Rock', 'BC', 'V4B1A8', true),
(3, 'Downtown House', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 
' https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg ', 100, 5, 3, 3, 'Canada', 'Granville Road', 'Vancouver', 'BC', 'V2A6G7', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 1, 3),
('2019-01-04', '2019-02-01', 2, 2),
('2021-10-01', '2021-10-14', 3, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 3, 2, 4, 'message'),
(2, 2, 3, 2, 'message'),
(3, 1, 1, 3, 'message');