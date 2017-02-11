/*
Query the difference between the maximum and minimum populations in CITY.

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

SELECT  (MAX(POPULATION) - MIN(POPULATION)) FROM CITY