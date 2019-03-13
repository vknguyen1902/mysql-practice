CREATE DATABASE animals_db;
USE animals_db;

CREATE TABLE people (
	person_name VARCHAR(30) NOT NULL,
    has_pet BOOLEAN DEFAULT false,
    pet_name VARCHAR(30),
    pet_age INT 
);

INSERT INTO people (person_name, has_pet, pet_name, pet_age)
VALUES ("Jacob", true, "Misty", 10);

INSERT INTO people (person_name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO people (person_name)
VALUES ("Peter");

UPDATE people
SET has_pet = true, pet_name = "Peet"
WHERE person_name = "Peter";

SELECT * FROM people;

DROP DATABASE IF EXISTS animals_db;

CREATE DATABASE animals_db; 
CREATE TABLE animals_db.people(
	id INT AUTO_INCREMENT NOT NULL,
    person_name VARCHAR(30) NOT NULL,
    has_pet BOOLEAN DEFAULT false,
    pet_name VARCHAR(30),
    pet_age INT,
    PRIMARY KEY (id)
);

INSERT INTO animals_db.people (person_name, has_pet, pet_name, pet_age)
VALUES 
	("Ahmed", true, "Rockington", 100),
	("Ahmed", true, "Ben", 100),
	("Jacob", true, "Misty", 10);

SELECT * FROM animals_db.people