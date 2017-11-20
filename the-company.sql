/*
Enter your query here.
*/
SELECT 
    e.company_code,
    c.founder,
    COUNT(DISTINCT e.lead_manager_code), 
    COUNT(DISTINCT e.senior_manager_code), 
    COUNT(DISTINCT e.manager_code), 
    COUNT(DISTINCT e.employee_code) 
FROM employee e, company c 
WHERE e.company_code = c.company_code 
GROUP BY e.company_code,c.founder 
ORDER BY e.company_code;
