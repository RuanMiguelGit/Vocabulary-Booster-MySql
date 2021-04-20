SELECT J.JOB_TITLE AS Cargo, ROUND(AVG(E.SALARY),2) AS Média_Salarial,
	CASE
		WHEN SALARY BETWEEN  2000  AND 5800 THEN 'Junior'
		WHEN SALARY BETWEEN  5801  AND 7500 THEN 'Pleno'
		WHEN SALARY BETWEEN  7501  AND 10500 THEN 'Sênior'
		WHEN SALARY > 10500  THEN 'CEO'
        END AS 'Senioridade'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
GROUP BY E.JOB_ID, J.JOB_TITLE
ORDER BY Média_Salarial, J.JOB_TITLE;

