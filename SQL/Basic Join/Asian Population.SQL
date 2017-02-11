/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
CITY
+-------------+--------------+
|FIELD        | Type         |
+-------------+--------------+
| ID          | INTEGER      |
| NAME        | VARCHAR(21)  |
| COUNTRYCODE | VARCHAR(21)  |
| DISRICT     | VARCHAR(21)  |
| POPULATION  | INTEGER      |
+-------------+--------------+
COUNTRY
+-------------+--------------+
|FIELD        | Type         |
+-------------+--------------+
| CODE        | VARCHAR(21)  |
| NAME        | VARCHAR(44)  |
| CONTINENT   | VARCHAR(13)  |
| REGION      | VARCHAR(25)  |
| POPULATION  | INTEGER      |
| CAPITAL     | VARCHAR(2)   |
+-------------+--------------+

*/

SELECT SUM(CITY.POPULATION)
FROM CITY, COUNTRY 
WHERE CITY.CountryCode = COUNTRY.Code AND COUNTRY.CONTINENT = 'Asia';

FROM 
(
   SELECT 
        MIN(LAT_N) AS a,
        MAX(LAT_N) AS b,
        MIN(LONG_W) AS c,
        MAX(LONG_W) AS d
    FROM 
        STATION
    ) T2;
