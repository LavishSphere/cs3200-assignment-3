/*
Query 7:  Write a query that lists all the customers that listen to longer-than-average tracks, excluding the tracks that are longer than 15 minutes.
*/

SELECT DISTINCT
    c.FirstName,
    c.LastName,
    t.Name AS Track_Name,
    t.Milliseconds
FROM customers c
JOIN invoices i      ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN tracks t        ON ii.TrackId = t.TrackId
WHERE t.Milliseconds > (SELECT AVG(Milliseconds) FROM tracks)
  AND t.Milliseconds <= 900000;
