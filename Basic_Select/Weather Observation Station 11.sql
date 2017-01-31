/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

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

select DISTINCT city 
from station 
where (NOT (city LIKE 'A%'or city LIKE 'E%' or city LIKE 'I%' or city LIKE 'O%' or city LIKE 'U%')) OR
(NOT(city LIKE '%a' or city LIKE '%e' or city LIKE '%i' or city LIKE '%o' or city LIKE '%u'))