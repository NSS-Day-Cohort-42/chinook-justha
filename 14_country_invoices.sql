-- 14. Provide a query that shows the # of invoices per country. 
-- HINT: GROUP BY


SELECT 
    i.BillingCountry,
    COUNT(i.InvoiceId) AS TotalInvoicesCount
FROM 
    Invoice i 
GROUP BY 
    i.BillingCountry