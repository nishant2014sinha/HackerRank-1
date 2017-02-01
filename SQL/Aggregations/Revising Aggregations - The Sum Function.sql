/*
Query the total population of all cities in CITY where District is California.

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

SELECT SUM(POPULATION) AS TOTAL_POPULATION 
FROM CITY 
WHERE DISTRICT = "California";