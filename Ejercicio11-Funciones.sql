
------------------------------------------------
-- CAPITULO DE FUNCIONES 
------------------------------------------------
-- REALIZA UNA OPERACIÓN Y ME DEVUELVE UN VALOR
------------------------------------------------

-- LOWER: Convierte el texto en MINUSCULA
select lower (email), email
from employees;

-- UPPER: Convierte el valor en MAYUSCULA
select upper (first_name), first_name
from employees;

select first_name
from employees
where upper (first_name)='DAVID'

-- INITCAP: Todas las primeras palabras las convierte en MAYUSCULA, las demas en MINUSCULA
select initcap('ESTO ES UNA PRUEBA')
from dual;

------------------------------------------------


-- CONCAT Y ANIDAMIENTO
select first_name||' '||last_name
from employees;

select concat (first_name, last_name)
from employees;

select concat (first_name,concat(' ',last_name))
from employees;


-- LENGTH: Nos muestra la longitud de una determinada Cadena

select first_name, length (first_name)
from employees;

select first_name, length (first_name)
from employees
where length (first_name) = 4;



-- SUBSTR: Nos permite recupera parte de una cadena

select first_name, substr(first_name,1,3)
from employees;

select first_name, substr(first_name,3)
from employees;

select first_name, substr(first_name,length (first_name),1)
from employees;


-- INSTR: Nos permite obtener la ubicación de una cadena, dentro de otra cadena.

SELECT first_name,INSTR (first_name,'a')
FROM employees;

SELECT first_name,INSTR (first_name,'a')
FROM employees
WHERE instr (first_name,'a') <> 0;

SELECT first_name,INSTR (LOWER (first_name),'a')
FROM employees
WHERE instr (LOWER (first_name),'a') <> 0;
gftrreeeeeeee
SELECT first_name,INSTR (first_name,'a',4)
FROM employees
where instr (first_name,'a',4) <> 0





-- LPAD: Toma a la cadena, luedo se le indica el tamaño total de la cadena y po ultimo la cadena con la que se le rellenará
select rpad (first_name,20,'*')
from employees;

-- RPAD
select lpad (first_name,20,'*')
from employees;



-- REPLACE: Se especifica la cadena, se identidica el valor actual de la cadena y por ultimo se indica cual será su nuevo valor.
select replace (first_name,'a','*')
from employees;

-- LTRIM



-- RTRIM



