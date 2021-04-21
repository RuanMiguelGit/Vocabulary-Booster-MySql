SELECT 
    *
FROM
    (SELECT 
        Country AS País
    FROM
        w3schools.customers UNION SELECT 
        Country AS País
    FROM
        w3schools.suppliers) AS País
ORDER BY País
LIMIT 5;