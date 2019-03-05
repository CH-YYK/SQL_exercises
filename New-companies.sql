

select c.company_code, c.founder,
(select count(*) from Lead_Manager l where l.company_code = c.company_code),
(select count(*) from Senior_Manager l where l.company_code = c.company_code),
(select count(*) from Manager l where l.company_code = c.company_code),
(select count(*) from Employee l where l.company_code = c.company_code)
from Company c
order by c.company_code;