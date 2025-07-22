CREATE TABLE rooms (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  room_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  start_time TIMESTAMP NOT NULL,
  end_time TIMESTAMP NOT NULL,
  FOREIGN KEY (room_id) REFERENCES rooms (id)
);

INSERT INTO rooms (name) VALUES ('Room 1'), ('Room 2'), ('Room 3');
