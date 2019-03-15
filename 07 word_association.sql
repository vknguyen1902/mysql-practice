USE miscellaneous_db;
SELECT * FROM wordassociation;

ALTER TABLE wordassociation
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

SELECT * FROM wordassociation 
WHERE wordassociation.source = "AC";

SELECT * FROM wordassociation 
WHERE wordassociation.source = "BC";

SELECT * FROM wordassociation 
WHERE wordassociation.source = "CC";

SELECT * FROM wordassociation
WHERE wordassociation.author < 20 AND wordassociation.author > 0;

SELECT * FROM wordassociation
WHERE wordassociation.word1 = "pie" OR wordassociation.word2 = "pie";


