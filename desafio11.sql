SELECT 
    C.ContactName AS 'Nome',
    C.Country AS 'País',
    (COUNT(CC.Country) -1) AS 'Número de compatriotas' 
FROM
    w3schools.customers AS C,
    w3schools.customers AS CC
WHERE
    C.Country = CC.Country
    
GROUP BY C.ContactName, C.Country
HAVING   (COUNT(CC.Country) -1)  != 0
ORDER BY C.ContactName;
