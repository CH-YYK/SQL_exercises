/*
A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
*/

/*
finding the median
*/
SET @rownum := -1;
 
SELECT
   round(AVG(t.LAT_N),4)
FROM
(
   SELECT
      @rownum := @rownum + 1 AS rownum,
      STATION.LAT_N AS LAT_N
   FROM
      STATION
   ORDER BY STATION.LAT_N
) AS t
WHERE
   t.rownum IN (
      CEIL(@rownum/2),
      FLOOR(@rownum/2)
   );

