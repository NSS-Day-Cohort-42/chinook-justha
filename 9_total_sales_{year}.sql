-- 9. What are the respective total sales for each of those years?


-- 2009, SUM all invoices
SELECT 
    SUM(i.Total)
FROM 
    Invoice i
WHERE 
    i.InvoiceDate LIKE '2009-%'; 


-- 2011, SUM all invoices
SELECT 
    SUM(i.Total)
FROM 
    Invoice i
WHERE 
    i.InvoiceDate LIKE '2011-%'; 