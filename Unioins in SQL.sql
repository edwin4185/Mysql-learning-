-- UNIONS 
SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old' AS Label
FROM employee_demographics
WHERE age > 50
Union;