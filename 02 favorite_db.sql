CREATE DATABASE favorite_db;

CREATE TABLE favorite_db.favorite_foods (
	food VARCHAR(50) NOT NULL,
    score INT
);

CREATE TABLE favorite_db.favorite_songs (
	song VARCHAR(100) NOT NULL,
    artist VARCHAR(50) NOT NULL,
    score INT 
);

CREATE TABLE favorite_db.favorite_movies (
	film VARCHAR(150) NOT NULL,
    five_times BOOLEAN DEFAULT false,
    score INT
);

INSERT INTO favorite_db.favorite_foods (food, score)
VALUES 
	("com tam", 100),
    ("bubble tea", 80),
    ("mapo tofu", 100),
    ("veggie curry", 100),
    ("takoyaki", 75),
    ("sushi", 100);

SELECT * FROM favorite_db.favorite_foods;

INSERT INTO favorite_db.favorite_movies (film, five_times, score)
VALUES
	("Color Me True", true, 10),
    ("Pets", false, 9);

SELECT * FROM favorite_db.favorite_movies; 
    
INSERT INTO favorite_db.favorite_songs (song, artist, score)
VALUES
	("Postcard", "James Blunt", 80),
    ("Hummingbird", "Alex Clare", 90),
    ("Sail", "Awolnation", 100),
    ("Pop Virus", "Hoshino Gen", 95);

SELECT * FROM favorite_db.favorite_songs    
		
	
