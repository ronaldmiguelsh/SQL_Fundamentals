
-- CONDICIONES CON LITERALES


-- ORACLE ES SENCIBLE A LAS MAYUSCULAS Y MINUSCULAS 
SELECT FIRST_NAME, LAST_NAME 
FROM EMPLOYEES e
WHERE FIRST_NAME = 'John'; -- Igual

SELECT FIRST_NAME, LAST_NAME 
FROM EMPLOYEES e
WHERE FIRST_NAME <> 'John'; -- Diferente
