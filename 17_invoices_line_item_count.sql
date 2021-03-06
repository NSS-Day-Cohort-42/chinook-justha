-- 17.  Provide a query that shows all Invoices but includes the # of invoice line items.


SELECT 
    i.InvoiceId,
    COUNT(il.InvoiceLineId) AS TotalInvoiceLineItems
FROM Invoice i
    JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId