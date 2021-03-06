DROP TABLE IF EXISTS activity_participants CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TABLE IF EXISTS activity_tags CASCADE;
DROP TABLE IF EXISTS activities CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS messages CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  avatar VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE activities (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  num_of_participants INTEGER,
  frequency VARCHAR(255) NOT NULL,
  days_available VARCHAR(255),
  timeframe VARCHAR(255),
  location VARCHAR(255),
  skill_tag VARCHAR(555),
  created_at TIMESTAMPTZ default NOW(),
  description TEXT NOT NULL
);

CREATE TABLE messages (
  id SERIAL PRIMARY KEY NOT NULL,
  activity_id INTEGER REFERENCES activities(id) ON DELETE CASCADE,
  sender_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  receiver_id INTEGER NOT NULL,
  text TEXT NOT NULL,
  created_at TIMESTAMPTZ default NOW()
);


CREATE TABLE activity_participants (
  id SERIAL PRIMARY KEY NOT NULL,
  activity_id INTEGER REFERENCES activities(id) ON DELETE CASCADE,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ default NOW(),
  status VARCHAR(255) default 'pending'
);
  

CREATE TABLE tags (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE activity_tags (
  id SERIAL PRIMARY KEY NOT NULL,
  activity_id INTEGER REFERENCES activities(id) ON DELETE CASCADE,
  tag_id INTEGER REFERENCES tags(id) ON DELETE CASCADE
);

ALTER SEQUENCE activity_participants_id_seq RESTART WITH 1;
ALTER SEQUENCE tags_id_seq RESTART WITH 1;
ALTER SEQUENCE activity_tags_id_seq RESTART WITH 1;
ALTER SEQUENCE activities_id_seq RESTART WITH 1;
ALTER SEQUENCE users_id_seq RESTART WITH 1;
ALTER SEQUENCE messages_id_seq RESTART WITH 1;