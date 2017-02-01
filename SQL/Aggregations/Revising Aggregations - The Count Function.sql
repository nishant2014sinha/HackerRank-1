/*
Query a count of the number of cities in CITY having a Population larger than 100,000.

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

SELECT COUNT(NAME) FROM CITY WHERE POPULATION > 100000