-- 6. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.


SELECT 
    e.FirstName || " " || e.LastName AS RepFullName,
    c.FirstName || " " || c.LastName AS CustomerFullName,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total
FROM Invoice i 
    JOIN Customer c ON c.CustomerId = i.CustomerId
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER BY 
    RepFullName,
    CustomerFullName;