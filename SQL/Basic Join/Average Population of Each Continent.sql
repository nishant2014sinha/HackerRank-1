/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns. Do not include continents without cities in your output.

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

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;