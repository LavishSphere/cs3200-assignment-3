/*
Query 5: Creative addition. Make an interesting query that uses a JOIN of at least two tables.
*/

SELECT 
    customers.FirstName AS Customer_First, 
    customers.LastName AS Customer_Last, 
    employees.FirstName AS Support_Rep_First,
    employees.LastName AS Support_Rep_Last,
    employees.Title AS Rep_Job_Title
FROM customers
JOIN employees ON customers.SupportRepId = employees.EmployeeId;
