-- 23. Which country's customers spent the most?


SELECT 
    TotalSalesByCountry.CustomerCountry, 
    MAX(TotalSalesByCountry.TotalSales) AS TopSales
FROM 
    (
    SELECT 
        c.Country AS CustomerCountry,
        ROUND(SUM(i.Total),2) AS TotalSales
    FROM Invoice i 
        JOIN Customer c ON c.CustomerId = i.CustomerId
    GROUP BY CustomerCountry
    ) 
        AS TotalSalesByCountry;
