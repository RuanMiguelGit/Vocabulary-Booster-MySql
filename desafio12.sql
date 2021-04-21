SELECT 
    CONCAT(F.FIRST_NAME, ' ', F.LAST_NAME) AS 'Nome completo funcionário 1',
    F.SALARY AS 'Salário funcionário 1',
    F.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(S.FIRST_NAME, ' ', S.LAST_NAME) AS 'Nome completo funcionário 2',
    S.SALARY AS 'Salário funcionário 2',
    S.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS F,
    hr.employees AS S
WHERE
    F.JOB_ID = S.JOB_ID
        AND F.FIRST_NAME <> S.FIRST_NAME
        AND 'Nome completo funcionário 1' <> 'Nome completo funcionário 2'
ORDER BY
 CONCAT(F.FIRST_NAME, ' ', F.LAST_NAME) , CONCAT(S.FIRST_NAME, ' ', S.LAST_NAME)
