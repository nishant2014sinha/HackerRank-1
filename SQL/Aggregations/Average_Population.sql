/*
Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

The CITY table is described as follows:

+-------------+--------------+
|FIELD        | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR(17)  |
| COUNTRYCODE | VARCHAR(3)   |
| DISTRICT    | VARCHAR(20)  |
| POPULATION  | NUMBER       |
+-------------+--------------+
*/

SELECT ROUND(AVG(POPULATION),0) 
FROM CITY 