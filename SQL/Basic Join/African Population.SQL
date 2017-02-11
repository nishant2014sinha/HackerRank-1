/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
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

SELECT (CITY.NAME)
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Africa'