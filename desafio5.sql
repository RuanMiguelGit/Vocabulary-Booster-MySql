SELECT 
JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS Variação_Salarial,
ROUND(AVG(MIN_SALARY),2) AS 'Média mínima mensal', 
ROUND(AVG(MAX_SALARY),2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY JOB_ID
ORDER BY Variação_Salarial ASC, JOB_TITLE;
