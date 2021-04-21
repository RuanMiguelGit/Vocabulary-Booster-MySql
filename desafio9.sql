SELECT 
    CONCAT(E.FirstName, ' ', E.LastNAME) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O ON E.EmployeeID = O.EmployeeID
GROUP BY CONCAT(E.FirstName, ' ', E.LastNAME)
ORDER BY COUNT(*)
 ASC;
