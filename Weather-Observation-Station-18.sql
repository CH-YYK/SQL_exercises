/*
compute manhattan distance between (a,b) (c,d)
    a = min(lat_n), c = max(lat_n)
    b = min(long_w), d = max(long_w)
*/


SELECT ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W)-MIN(LONG_W)), 4) FROM STATION 