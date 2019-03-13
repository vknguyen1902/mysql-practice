DROP DATABASE IF EXISTS books_db;
CREATE DATABASE books_db;
USE books_db;

CREATE TABLE books(
  id INT AUTO_INCREMENT NOT NULL,
  authorId INT,
  title VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE authors(
  id INT AUTO_INCREMENT NOT NULL,
  firstName VARCHAR(100),
  lastName VARCHAR(100),
  PRIMARY KEY (id)
);

INSERT INTO authors (firstName, lastName)
VALUES 
	('Jane', 'Austen'),
    ('Mark', 'Twain'),
    ('Lewis', 'Carroll'),
	('Andre', 'Asselin');

INSERT INTO books (title, authorId) 
VALUES 
	('Pride and Prejudice', 1),
    ('Emma', 1),
    ('The Adventures of Tom Sawyer', 2),
    ('Adventures of Huckleberry Finn', 2),
    ('Alice''s Adventures in Wonderland', 3),
    ('Dracula', null);

SELECT * FROM authors;
SELECT * FROM books;

SELECT title, firstName, lastName
FROM books
INNER JOIN authors ON books.authorId = authors.id;

SELECT title, firstName, lastName
FROM books
LEFT JOIN authors ON books.authorId = authors.id;

SELECT title, firstName, lastName
FROM books
RIGHT JOIN authors ON books.authorId = authors.id;
