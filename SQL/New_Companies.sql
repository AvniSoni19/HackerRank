/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
*/

    SELECT 
        Company.company_code, 
        Company.founder, 
        COUNT(DISTINCT Lead_Manager.lead_manager_code) AS lead_manager_count, 
        COUNT(DISTINCT Senior_Manager.senior_manager_code) AS senior_manager_count, 
        COUNT(DISTINCT Manager.manager_code) AS manager_count, 
        COUNT(DISTINCT Employee.employee_code) AS employee_count 
    FROM 
        Company
    LEFT JOIN 
        Lead_Manager ON Company.company_code = Lead_Manager.company_code
    LEFT JOIN 
        Senior_Manager ON Company.company_code = Senior_Manager.company_code
    LEFT JOIN 
        Manager ON Company.company_code = Manager.company_code
    LEFT JOIN 
        Employee ON Company.company_code = Employee.company_code  
    GROUP BY 
        Company.company_code, Company.founder
    ORDER BY 
        Company.company_code ASC;