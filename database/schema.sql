--users
CREATE TABLE users (
    User_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    number INT(10) UNIQUE NOT NULL,
    password VARCHAR() NOT NULL,
);