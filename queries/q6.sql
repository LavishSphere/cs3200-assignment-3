/*
Query 6: Creative addition. Make an interesting query that uses a GROUP statement and at least two tables.
*/

SELECT 
    Country, 
    COUNT(CustomerId) AS Total_Customers
FROM customers
GROUP BY Country
ORDER BY Total_Customers DESC;
