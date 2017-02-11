/*
Query the Western Longitude (LONG_W) for the smallest Northern Latitude (LAT_N) in STATION that is greater than 38.7780. Round your answer to 4 decimal places.

Input Format

The STATION table is described as follows:
+-------------+--------------+
|FIELD        | Type         |
+-------------+--------------+
| ID          | INTEGER      |
| CITY        | VARCHAR(21)  |
| STATE       | VARCHAR(21)  |
| LAT_N       | INTEGER      |
| LONG_W      | INTEGER      |
+-------------+--------------+
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT ROUND(LONG_W,4) 
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780)
