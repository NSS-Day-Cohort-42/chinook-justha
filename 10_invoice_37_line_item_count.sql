-- 10. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.


SELECT 
    COUNT(il.InvoiceLineId)
FROM 
    InvoiceLine il
WHERE 
    il.InvoiceId = 37;




-- confirm...    
-- SELECT 
--     il.InvoiceLineId, 
--     il.InvoiceId,
--     il.Quantity,
--     il.UnitPrice
-- FROM 
--     InvoiceLine il
-- WHERE 
--     il.InvoiceId = 37;

