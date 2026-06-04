-- temporary tables 
create temporary table temp_table
(first_name varchar (50),
last_name varchar (50),
favourite_movies varchar (100)
);

select *
from temp_table;

insert into temp_table 
values('edwin', 'oluchukwu', 'iceman cometh');


select *
from employee_demographics;

create temporary table salary_over_50k
select*
from employee_salary
where salary >= 50000;














select*
from salary_over_50k;













