CREATE DATABASE miscellaneous_db;
USE miscellaneous_db;
SELECT * FROM miscellaneous_db.bird_song;

-- One condition
SELECT * 
FROM miscellaneous_db.bird_song 
WHERE genus = "Acanthis";

-- Two conditions with "and"
SELECT * 
FROM bird_song 
WHERE genus = "Acanthis" AND country = "Netherlands";

-- Either condition with "or"
SELECT * 
FROM birdsong 
WHERE genus = "Acanthis" OR genus = "Acrocephalus";

-- Where condition is not met
SELECT * FROM birdsong WHERE NOT genus = "Anthus";
