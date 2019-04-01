/*
https://www.hackerrank.com/challenges/the-report/problem
*/
SELECT
    CASE WHEN GRADE >= 8 THEN NAME 
    ELSE NULL END AS NAME,
    GRADE,
    MARKS
FROM
    (
        SELECT ID, NAME, MARKS,
            (SELECT GRADE FROM GRADES WHERE MARKS >= MIN_MARK AND MARKS <= MAX_MARK) AS GRADE
        FROM STUDENTS
    ) TMP
ORDER BY -GRADE, NAME, MARKS

/*
Britney 10 95 
Heraldo 10 94 
Julia 10 96 
Kristeen 10 100 
Stuart 10 99 
Amina 9 89 
Christene 9 88 
Salma 9 81 
Samantha 9 87 
Scarlet 9 80
Vivek 9 84 
Aamina 8 77 
Belvet 8 78 
Paige 8 74 
Priya 8 76 
Priyanka 8 77  
NULL 7 64 
NULL 7 66 
NULL 6 55 
NULL 4 34 
NULL 3 24
*/