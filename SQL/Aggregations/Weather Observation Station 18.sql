/*
Consider P1(a,b) and P2(c,d)  to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
c happens to equal the minimum value in Western Longitude (LONG_W in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

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

SELECT ROUND(((c-a) + (d-b)),4) FROM 
(
    SELECT
        MIN(LAT_N) AS a,
        MAX(LAT_N) AS b,
        MIN(LONG_W) AS c, 
        MAX(LONG_W) AS d 
    FROM 
        STATION
    ) T1
