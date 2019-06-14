SELECT department.name, 
    CASE WHEN student_cp.num IS NOT NULL
        THEN student_cp.num 
        ELSE 0 
    END AS num
FROM department 
LEFT JOIN (
    select dept_id, count(Name) AS num 
    FROM student 
    GROUP BY dept_id
    ) AS student_cp
ON department.ID = student_cp.dept_id
ORDER by student_cp.num DESC, department.name ASC;