/* You are given a table, BST, containing two columns: N and P, 
where N represents the value of a node in Binary Tree, 
and P is the parent of N.
*/

/* Tack preparation */
DROP TABLE if exists BST;

create table BST (
    N int,
    P int
);

insert into BST (N, P) values (1, 2);
insert into BST (N, P) values (3, 2);
insert into BST (N, P) values (2, NULL);


/* Start query*/
SELECT 
    N, 
    IF(
        P IS NULL, 'Root', 
        IF(
            (SELECT COUNT(*) FROM BST WHERE B.N = P) > 0, 
        'Inner', 'Leaf')
        )
FROM BST AS B ORDER BY N;
