-- 20. Which sales agent made the most in sales over all?

SELECT 
    TotalSalesByRep.SalesRepName, 
    MAX(TotalSalesByRep.TotalSales) AS TopSales2009
FROM (
    SELECT 
        e.FirstName || " " || e.LastName AS SalesRepName,
        ROUND(SUM(i.Total),2) AS TotalSales
    FROM Invoice i 
        JOIN Customer c ON c.CustomerId = i.CustomerId
        JOIN Employee e ON e.EmployeeId = c.SupportRepId
    GROUP BY SalesRepName
) AS TotalSalesByRep 

