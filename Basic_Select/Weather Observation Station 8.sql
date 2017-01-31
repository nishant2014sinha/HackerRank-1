/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates. 	

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

select city 
from station 
where (city LIKE 'A%'or city LIKE 'E%' or city LIKE 'I%' or city LIKE 'O%' or city LIKE 'U%') and 
(city LIKE '%a' or city LIKE '%e' or city LIKE '%i' or city LIKE '%o' or city LIKE '%u') 