/*
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
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

SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2) FROM STATION;
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY,0,'')))
FROM EMPLOYEES