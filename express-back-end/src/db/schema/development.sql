INSERT INTO users (name, avatar, city, password, email)
VALUES ('Sylvia Palmer', 'https://i.imgur.com/LpaY82x.png', 'Calgary', '123', 'email@email.com'),
('Tori Malcolm', 'https://i.imgur.com/Nmx0Qxo.png', 'Calgary', '123', 'email@email.com'),
('Mildred Nazir', 'https://i.imgur.com/T2WwVfS.png', 'Calgary', '123', 'email@email.com'),
('Cohana Roy', 'https://i.imgur.com/FK8V841.jpg', 'Calgary', '123', 'email@email.com'),
('Sven Jones', 'https://i.imgur.com/twYrpay.jpg', 'Calgary', '123', 'email@email.com'),
('Susan Reynolds', 'https://i.imgur.com/TdOAdde.jpg', 'Calgary', '123', 'email@email.com'),
('Alec Quon', 'https://i.imgur.com/3tVgsra.jpg', 'Calgary', '123', 'email@email.com'),
('Viktor Jain', 'https://i.imgur.com/iHq8K8Z.jpg', 'Calgary', '123', 'email@email.com');

INSERT INTO activities (name, num_of_participants, frequency, days_available, timeframe, location, skill_tag, description)
VALUES ('Evening Spikeball', 4, 'weekly', 'thursday tuesday', 'evening', 'Stanley Park', 'advanced', 'Come join us on a weekly basis for some insanely intense spikeball in the park!'),
('Bocce Ball', 6, 'weekly', 'wednesday', 'morning', 'My backyard', 'intermediate', 'Master the art and balance of bocce with a great team from lower mainland'),
('Really Bad Tennis', 2, 'bi weekly', 'thursday sunday', 'evening', 'Parker Elementary School', 'beginner', 'Ready for some embarrasingly bad tennis? come make a fool of yourself with others pretending we know what were even doing'),
('Frolfingly Fun', 3, 'monthly', 'saturday', 'daytime', 'Somewhere killer', 'beginner', 'I know we all live to frolf!'),
('Hike to no mans land', 6, 'weekly', 'saturday', 'daytime', 'Changes regularily', 'intermediate', 'Need a change of scenery? Get out of the city and look around!'),
('Spalunking yo', 8, 'monthly', 'sunday', 'morning', 'Rocky Mountains', 'beginner', 'Come climb into the middle of the Earth with us!');

INSERT INTO activity_participants (activity_id, user_id, status)
VALUES (1, 2,'null'),
(2,4,'pending'),
(3,2,'accepted'),
(4,4,'pending'),
(4,6,'accepted'),
(1, 1, 'host'),
(2, 3, 'host'),
(3, 4, 'host'),
(4, 1, 'host'),
(5, 5, 'host'),
(6, 1, 'host');

INSERT INTO tags (name)
VALUES ('outdoor'),
 ('hiking'), 
 ('fishing'),
('kayaking'),
('racquet sports'),
('spikeball'),
('road biking'),
('mountain biking'),
('snowboarding'),
('cross country skiing'),
('online'),
('gaming'),
('language practice'),
('quiz party'),
('weekly'),
('bi weekly'),
('monthly'),
('one time'),
('monday'),
('tuesday'),
('wednesday'),
('thursday'),
('friday'),
('saturday'),
('sunday'),
('morning'),
('daytime'),
('evening'),
('beginner'),
('intermediate'),
('recreation'),
('bocce ball'),
('summer'),
('court'),
('tennis'),
('disc golf'),
('advanced');

INSERT INTO activity_tags (activity_id, tag_id)
VALUES (1, 1),
(1, 6),
(1, 31),
(2, 1),
(2, 31),
(2, 32),
(2, 33),
(3, 1),
(3, 34),
(3, 35),
(4, 1),
(4, 31),
(4, 36),
(5, 1),
(5, 31),
(5, 2),
(6, 1),
(6, 31);




