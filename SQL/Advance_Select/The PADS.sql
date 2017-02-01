/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 

There are total [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

Input Format

The OCCUPATIONS table is described as follows:
+-------------+--------------+
|Column       | Type         |
+-------------+--------------+
| NAME        | STRING       |
| OCCUPATION  | STRING       |
+-------------+--------------+
Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Output

Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are total 2 doctors.
There are total 2 singers.
There are total 3 actors.
There are total 3 professors.
Explanation

The results of the first query are formatted to the problem description's specifications. 
The results of the second query are ascendingly ordered first by number of names corresponding to each profession ,and then alphabetically by profession
*/


SELECT CONCAT(NAME,'(',LEFT(OCCUPATION,1),')') AS NEW 
FROM OCCUPATIONS
ORDER BY NEW;
SELECT CONCAT('There are total ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.') AS NEW
FROM OCCUPATIONS 
GROUP BY OCCUPATION 
ORDER BY count(OCCUPATION),OCCUPATION