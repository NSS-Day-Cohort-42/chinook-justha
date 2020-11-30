-- 11. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
-- HINT: GROUP BY


SELECT 
    il.InvoiceId,
    COUNT(il.InvoiceLineId) AS TotalLineItems
FROM 
    InvoiceLine il
GROUP BY 
    il.InvoiceId;