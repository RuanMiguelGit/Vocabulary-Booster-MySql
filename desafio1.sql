
SELECT 
    COUNTRY_NAME AS País,
    IF(REGION_ID = 1,
        'incluído',
        'não incluido') AS 'Status Inclusão'
FROM
    hr.countries
