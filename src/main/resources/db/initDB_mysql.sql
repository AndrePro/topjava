CREATE TABLE users
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    registered TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    calories_per_day INT DEFAULT '2000',
    enabled    BOOL DEFAULT TRUE
);
CREATE UNIQUE INDEX unique_email ON users (email);

ALTER TABLE users AUTO_INCREMENT = 100000;


CREATE TABLE user_roles
(
  user_id INTEGER NOT NULL,
  role    VARCHAR(50),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);