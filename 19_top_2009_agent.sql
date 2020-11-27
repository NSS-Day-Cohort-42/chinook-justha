-- 19. Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX function on a subquery.


SELECT 
    TotalSalesByRep.SalesRepName, 
    MAX(TotalSalesByRep.TotalSales) AS TopSales2009
FROM 
    (
    SELECT 
        e.FirstName || " " || e.LastName AS SalesRepName,
        ROUND(SUM(i.Total),2) AS TotalSales
    FROM Invoice i 
        JOIN Customer c ON c.CustomerId = i.CustomerId
        JOIN Employee e ON e.EmployeeId = c.SupportRepId
    WHERE 
        i.InvoiceDate LIKE '2009%'
    GROUP BY SalesRepName
    ) 
        AS TotalSalesByRep 
