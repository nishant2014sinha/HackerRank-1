/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2  and format your answer to display 4 decimal digits.

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

SELECT ROUND(SQRT(((c-a)*(c-a)) + ((d-b)*(d-b))),4)
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
