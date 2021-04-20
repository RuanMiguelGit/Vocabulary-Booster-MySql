SELECT UCASE( CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS Nome_completo,
H.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E
    hr.job_history AS H ON E.JOB_ID = H.JOB_ID
ORDER BY Nome_completo ASC, E.HIRE_DATE;
