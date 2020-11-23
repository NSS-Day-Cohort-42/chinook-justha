-- 4. Provide a query showing only the Employees who are Sales Agents.


-- SELECT * FROM Employee 

SELECT 
    FirstName,
    LastName,
    Title
FROM Employee
WHERE Title = "Sales Support Agent";