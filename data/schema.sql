DROP DATABASE IF EXISTS vacation_attractions;
CREATE DATABASE vacation_attractions;
DROP TABLE IF EXISTS attractions;
DROP TABLE IF EXISTS states;
CREATE TABLE states (
    state_id SERIAL PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL,
    state_abbreviation CHAR(2) NOT NULL,
    capital VARCHAR(50)
);
CREATE TABLE attractions (
    attraction_id SERIAL PRIMARY KEY,
    attraction_name VARCHAR(50) NOT NULL,
    attraction_description TEXT,
    state_id INT NOT NULL,
    state_abbreviation CHAR(2) NOT NULL,
    price_of_admission DECIMAL(10, 2),
    attraction_type VARCHAR(50) NOT NULL,
    attraction_rating DECIMAL(2, 1) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);