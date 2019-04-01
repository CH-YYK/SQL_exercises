/*
onsider (a,b) and (c,d) to be two points on a 2D plane where (a,c) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
and (b,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION
*/
SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2)+POWER(MAX(LONG_W)-MIN(LONG_W), 2)), 4) 
FROM STATION