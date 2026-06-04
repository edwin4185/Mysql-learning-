SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "on Death's Door"
    END AS age_bracket
FROM employee_demographics;
-- < 5000 = 5%
-- > 5000 = 7%
-- Finance Depart = 10% Bonus 

SELECT first_name, last_name, salary,
	CASE
		WHEN salary < 50000 THEN salary + (salary * 0.05)
        WHEN salary > 50000 THEN salary + (salary * 0.07)
    END AS New_salary
FROM employee_salary

;





