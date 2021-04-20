SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo', 
 J.JOB_TITLE AS Cargo, 
 E.HIRE_DATE AS 'Data de início do cargo',
 D.DEPARTMENT_NAME AS 'Departamento'
 FROM hr.employees AS E
INNER JOIN hr.jobs AS J 
ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;