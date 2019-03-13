CREATE DATABASE programming_db;

CREATE TABLE programming_db.programming_languages (
	id INT AUTO_INCREMENT NOT NULL,
    languages VARCHAR(150) NOT NULL,
    rating INT,
    PRIMARY KEY (id)
);

INSERT INTO programming_db.programming_languages (languages, rating)
VALUES
	("Python", 4),
    ("R", 3),
    ("C++", 4),
    ("SQL", 5),
    ("JavaScript", 4),
    ("CSS", 4);

SELECT * FROM programming_db.programming_languages

