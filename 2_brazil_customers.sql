-- 2. Provide a query only showing the Customers from Brazil.


SELECT 
    FirstName || " " || LastName AS FullName,
    CustomerId,
    Country
FROM Customer
WHERE Country = "Brazil";