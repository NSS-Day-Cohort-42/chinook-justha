-- 22. Provide a query that shows the total sales per country.


-- total sales per country billed
SELECT 
    i.BillingCountry,
    ROUND(SUM(i.Total),2) AS TotalSales
FROM 
    Invoice i
GROUP BY i.BillingCountry;


-- total sales per customer country
SELECT 
    c.Country AS CustomerCountry,
    ROUND(SUM(i.Total),2) AS TotalSales
FROM 
    Invoice i
        JOIN Customer c ON c.CustomerId = i.CustomerId
GROUP BY CustomerCountry;