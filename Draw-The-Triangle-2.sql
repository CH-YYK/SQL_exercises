/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
*/

/*information_schema.tables is some table that is long enough to loop  */

set @num := 0;
select repeat('* ', @num := @num + 1) from information_schema.tables where @num < 20