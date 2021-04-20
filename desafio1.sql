SELECT 
    COUNTRY_NAME AS País,
    IF(R.REGION_NAME = 'Europe',
        'incluído',
        'não incluido') AS 'Status Inclusão'
FROM
    hr.countries AS F
    INNER JOIN hr.regions AS R
    ON R.REGION_ID = F.REGION_ID
    ORDER BY País ASC;
