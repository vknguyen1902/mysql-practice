USE miscellaneous_db;

ALTER TABLE globalfirepower
ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM globalfirepower;

DELETE FROM globalfirepower
WHERE ReservePersonnel = 0;

UPDATE globalfirepower
SET FighterAirCraft = 1
WHERE FighterAirCraft = 0;

UPDATE globalfirepower
SET TotalAircraftStrength = TotalAircraftStrength + 1
WHERE FighterAircraft = 1;

SET SQL_SAFE_UPDATES = 1;

SELECT 
	AVG(TotalMilitaryPersonnel),
	AVG(TotalAircraftStrength),
	AVG(TotalHelicopterStrength),
	AVG(TotalPopulation)
FROM globalfirepower;

INSERT INTO globalfirepower (Country, TotalMilitaryPersonnel, TotalAircraftStrength, 
							 TotalPopulation, TotalHelicopterStrength)
VALUES ("Bibi", 524357, 456.56, 60069024, 182.65)
;

SELECT * FROM globalfirepower;



