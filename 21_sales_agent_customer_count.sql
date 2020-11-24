-- 21. Provide a query that shows the count of customers assigned to each sales agent.


SELECT 
    e.FirstName || " " || e.LastName AS SalesRep,
    COUNT(c.CustomerId)
FROM Customer c
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY SalesRep