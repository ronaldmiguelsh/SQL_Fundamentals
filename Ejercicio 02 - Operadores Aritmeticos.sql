/*
+   Suma
-   Resta
*   Multiplicación
/   División
%   Resto

*/




-- EJEMPLO DE COMO REALIZAR OPERACIONES ARITMETICAS
SELECT
    FIRST_NAME AS "Primer Nombre", SALARY AS "Salario Mencual", SALARY*12 AS "Salario Anual", 20*10 AS "Ejmplo de Constantes"
FROM EMPLOYEES;


/*
CALULAR LO SIGUIENTE:
- Salario
- Impuesto con el 20%
- Pago neto
*/
SELECT
    FIRST_NAME AS "Nombre", SALARY AS "Salario Neto", (SALARY*20)/100 AS "Impuesto", SALARY-((SALARY*20)/100) AS "Neto"
FROM EMPLOYEES;


-- CALCULAR EL SALARIO ANUAL  
SELECT  
    FIRST_NAME AS "Nombre", SALARY AS "Salario", (SALARY-((SALARY*20)/100))*14 AS "Salario Anual"
FROM EMPLOYEES;

