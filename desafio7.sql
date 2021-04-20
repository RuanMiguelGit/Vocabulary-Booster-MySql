SELECT UCASE( CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS Nome_completo,
E.HIRE_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E
ORDER BY Nome_completo ASC, E.HIRE_DATE;
