/*
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/
SELECT ROUND(AVG(POPULATION)) as AvgPopulation
FROM CITY;