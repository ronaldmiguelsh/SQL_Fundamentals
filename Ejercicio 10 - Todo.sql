
-- Condicionales:

SELECT * FROM employees e WHERE e.department_id=50;

Select * From Employees Where Salary >5000;

select * from employees where department_id <> 50;

select * from employees where first_name='John';

select * from employees where to_char (hire_date,'YYYYMMDD')='20040718';
select * from employees where to_char (hire_date,'YYYYMMDD')='20050718';











-- BETWEEN
select * 
from employees 
where salary between 5000 and 6000;

select * 
from employees 
where hire_date between '21/05/05' and '21/05/07';

select * 
from employees 
where first_name between 'David' and 'Ismael';










-- IN
select * 
from employees 
where department_id in (50,60);

select * 
from employees 
where job_id in ('IT_PROG','ST_MAN');



-- LIKE
select * 
from employees 
where first_name like 'J%';

select * 
from employees 
where first_name like '_e%';

select * 
from employees 
WHERE first_name like '%te%';




-- IS NULL
-- IS NOT NULL
select * 
from employees 
where commission_pct is null;
--where commission_pct is not null;

select * 
from employees 
where commission_pct is not null;

select * 
from locations 
where state_province is null;

select FIRST_NAME, SALARY ,COMMISSION_PCT , (SALARY+COMMISSION_PCT) AS SUELDO_TOTAL 
from employees 
where COMMISSION_PCT iS not null;





-- AND OR NOT
select * from employees where salary > 5000 AND department_id = 50;
select * from employees where salary > 5000 or department_id = 50;
select * from employees where department_id not in (50,60);


-- AND
select first_name, salary, department_id, hire_date
from employees
where salary > 5000 and department_id=50 and hire_date > '10-05-05';

select first_name, hire_date, job_id
from employees 
where job_id ='IT_PROG' and salary < 6000;

-- OR
select first_name, salary, department_id, hire_date
from employees
where salary > 5000 and department_id=50 OR hire_date > '10-05-05';

-- OR
select first_name, salary, department_id, hire_date
from employees
where salary > 5000 and (department_id=50 OR hire_date > '10-05-05');

select *
from employees
where department_id in (50,80) and first_name like 'S%' and salary >3000;
--where first_name like 'S%' and salary >3000 and (department_id =50 or department_id = 80);

select e.job_id, e.*
from employees e
--where e.job_id='IT_PROG' and e.phone_number like '5%' and hire_date >'01-01-07'
where e.job_id='IT_PROG' and e.phone_number like '5%' and hire_date between '01-01-07' and '31-12-07';











-- ORDENACIONES
select * from employees order by salary asc;
select * from employees order by salary desc;

select first_name, last_name
from employees
--where first_name = 'David'
order by first_name, last_name;

select first_name, salary*12
from employees
order by 2;

select first_name, (salary*12) as total
from employees
order by total desc;









-- LIMITE DE REGISTROS
select first_name, salary
from employees
order by salary desc
fetch first 7 rows only; -- La cantidad específica de registros

select first_name, salary
from employees
order by salary desc
fetch first 7 rows with ties; -- si tiene el mimos valor lo concidera

select first_name, salary
from employees
order by salary desc 
offset 5 rows                   -- iniciar despues de 5 registros
fetch first 7 rows with ties ;   -- 

select *
from employees
fetch first 20 percent rows only; -- Porcentaje






