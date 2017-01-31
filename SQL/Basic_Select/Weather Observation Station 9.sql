/*
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.	

Input Format

The STATION table is described as follows:
Station.jpg

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

SELECT DISTINCT CITY
FROM STATION
WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%'OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') 