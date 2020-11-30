-- 8. How many Invoices were there in 2009 and 2011?


-- COUNT all invoices in 2009 and 2011 combined
SELECT 
    strftime("%Y", i.InvoiceDate) AS Year,
    COUNT(i.InvoiceId) AS TotalInvoiceCount
FROM 
    Invoice i
WHERE 
    i.InvoiceDate LIKE '2009%' OR i.InvoiceDate LIKE '2011%'
GROUP BY Year;
 