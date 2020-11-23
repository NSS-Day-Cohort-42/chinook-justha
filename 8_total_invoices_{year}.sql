-- 8. How many Invoices were there in 2009 and 2011?

-- 2009, COUNT all invoices
SELECT 
    COUNT(i.InvoiceId)
FROM 
    Invoice i
WHERE 
    i.InvoiceDate LIKE '2009-%'; 


-- 2011, COUNT all invoices
SELECT 
    COUNT(i.InvoiceId)
FROM 
    Invoice i
WHERE 
    i.InvoiceDate LIKE '2011-%'; 




-- SELECT * FROM Invoice

-- 2009, all invoices
-- SELECT DISTINCT 
--     i.InvoiceId, 
--     i.InvoiceDate
-- FROM Invoice i
-- WHERE 
--     i.InvoiceDate BETWEEN '2008-12-31 23:59:59' AND '2010-01-01 00:00:00'
-- ORDER BY i.InvoiceDate ASC;

-- 2009, all invoices
-- SELECT DISTINCT 
--     i.InvoiceId, 
--     i.InvoiceDate
-- FROM Invoice i
-- WHERE 
--     i.InvoiceDate BETWEEN '2010-12-31 23:59:59' AND '2012-01-01 00:00:00'
-- ORDER BY i.InvoiceDate ASC;


