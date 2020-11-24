-- 23. Which country's customers spent the most?


SELECT
    c.Country,
    ROUND(SUM(i.Total),2)
FROM Invoice i
    JOIN Customer c ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY c.Country DESC
LIMIT 1;
