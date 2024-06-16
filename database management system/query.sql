--Query 1: Find all employees who have been hired in the last year
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    hire_date 
FROM 
    employees 
WHERE 
    hire_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

--Query 2: Calculate the total salary expenditure for each department

SELECT 
    d.department_id, 
    d.department_name, 
    SUM(s.salary) AS total_salary_expenditure 
FROM 
    departments d 
JOIN 
    employees e ON d.department_id = e.department_id 
JOIN 
    salaries s ON e.employee_id = s.employee_id 
WHERE 
    s.to_date = '9999-01-01'  -- Assuming '9999-01-01' signifies the current salary
GROUP BY 
    d.department_id, 
    d.department_name;

--Query 3: Find the top 5 highest paid employees along with their department names

SELECT 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    d.department_name, 
    s.salary 
FROM 
    employees e 
JOIN 
    salaries s ON e.employee_id = s.employee_id 
JOIN 
    departments d ON e.department_id = d.department_id 
WHERE 
    s.to_date = '9999-01-01'  -- Assuming '9999-01-01' signifies the current salary
ORDER BY 
    s.salary DESC 
LIMIT 5;
