SELECT CONCAT(NAME, '(', SUBSTR(OCCUPATION, 1, 1), ')') 
FROM OCCUPATIONS ORDER BY NAME ASC;


SELECT CONCAT('There are a total of ', CAST(COUNT(*) AS CHAR), ' ', LOWER(OCCUPATION), 's.') 
FROM OCCUPATIONS GROUP BY OCCUPATION ORDER BY COUNT(*) ASC;

/*
Aamina(D) 
Ashley(P) 
Belvet(P) 
Britney(P) 
Christeen(S) 
Eve(A) 
Jane(S) 
Jennifer(A) 
Jenny(S) 
Julia(D) 
Ketty(A) 
Kristeen(S) 
Maria(P) 
Meera(P) 
Naomi(P) 
Priya(D) 
Priyanka(P) 
Samantha(A) 
There are a total of 3 doctors. 
There are a total of 4 actors. 
There are a total of 4 singers. 
There are a total of 7 professors.
*/
