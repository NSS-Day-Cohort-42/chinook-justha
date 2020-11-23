-- 7. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.


SELECT 
    i.InvoiceId,
    i.Total,
    i.BillingCountry,
    e.FirstName || " " || e.LastName AS RepName,
    c.FirstName || " " || c.LastName AS CustomerName,
    c.Country AS CustomerCountry
FROM Invoice i
    JOIN Customer c ON c.CustomerId = i.CustomerId
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER BY 
    RepName ASC,
    CustomerName ASC;
