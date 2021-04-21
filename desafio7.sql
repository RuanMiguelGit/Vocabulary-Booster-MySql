SELECT 
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
    H.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
    WHERE MONTH(H.START_DATE) IN (1,2,3)
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME), E.HIRE_DATE;
