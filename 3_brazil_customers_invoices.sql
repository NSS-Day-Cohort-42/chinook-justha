-- 3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.


-- SELECT * FROM Customer
-- SELECT * FROM Invoice

SELECT 
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry,
    c.FirstName || " " || c.LastName AS FullName,
    c.Country
FROM Invoice i 
    JOIN Customer c ON c.CustomerId = i.CustomerId
WHERE  c.Country = "Brazil";
