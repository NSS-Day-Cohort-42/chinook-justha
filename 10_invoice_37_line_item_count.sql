-- 10. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.


SELECT 
    il.InvoiceId,
    COUNT(il.InvoiceLineId) AS TotalLineItems
FROM 
    InvoiceLine il
WHERE 
    il.InvoiceId = 37;



