CREATE DATABASE IF NOT EXISTS web;

CREATE TABLE IF NOT EXISTS web.recipe (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brewfather_id VARCHAR(50) UNIQUE,
    name VARCHAR(100)
) AUTO_INCREMENT=100;

CREATE TABLE IF NOT EXISTS web.batch (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brewfather_id VARCHAR(50) UNIQUE,
    name VARCHAR(100),
    status VARCHAR(30),
    recipe BIGINT,
    FOREIGN KEY (recipe) REFERENCES recipe(id)
) AUTO_INCREMENT=100;
