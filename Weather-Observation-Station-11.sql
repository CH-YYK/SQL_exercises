/*
Query the list of CITY names from STATION that either do not start with 
vowels or do not end with vowels. 
Your result cannot contain duplicates.
*/

/* either not .. or .. == not both are*/ 
SELECT DISTINCT CITY FROM STATION WHERE CITY not RLIKE '^[AEIOU].*[AEIOU]$'