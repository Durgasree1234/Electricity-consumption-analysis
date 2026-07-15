DROP TABLE consumption;
DROP DATABASE consumption_analysis;

CREATE DATABASE consumption_analysis;
USE consumption_analysis;

CREATE TABLE consumption (
    Date DATE,
    State VARCHAR(100),
    Region VARCHAR(50),
    Consumption FLOAT
);
SHOW TABLES;
ALTER TABLE consumption 
ADD latitude FLOAT,
ADD longitude FLOAT;
# show all data
SELECT * FROM consumption;
#count rows
SELECT COUNT(*) FROM consumption;
#Highest consumption
SELECT MAX(consumption) FROM consumption;
#average consumption
SELECT AVG(consumption) FROM consumption;
#State-wise consumption
SELECT state, SUM(consumption) FROM consumption GROUP BY state;
DESCRIBE consumption;
SELECT COUNT(*) AS Total_Rows
FROM consumption;
SELECT * FROM consumption;
SELECT MIN(Date), MAX(Date) FROM consumption;
SELECT DISTINCT YEAR(Date) FROM consumption;
SELECT *
FROM consumption
WHERE YEAR(Date) IN (2019, 2020)
ORDER BY Date;
SELECT COUNT( *) FROM consumption;
SELECT *
FROM consumption
WHERE Date IS NULL
OR State IS NULL
OR Region IS NULL
OR Consumption IS NULL;
SELECT DATE,state,region, COUNT(*)
FROM consumption
GROUP BY DATE,state,region
HAVING COUNT(*)>1;
CREATE TABLE consumption_clean AS
SELECT DISTINCT *
FROM consumption;
SELECT COUNT(*) FROM consumption_clean;
SELECT Date, state, region,COUNT(*)
FROM CONSUMPTION_CLEAN
GROUP BY DATE, State, region
HAVING COUNT(*) > 1;
SELECT DISTINCT *
FROM consumption
WHERE DATE = 2019-07-08',2019-07-09',2019-07-10,2019-07-11