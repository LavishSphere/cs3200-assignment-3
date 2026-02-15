/*
Query 8:  Write a query that lists all the tracks that are not in one of the top 5 genres with longer duration in the database.
*/

SELECT 
    tracks.Name AS Track_Name, 
    tracks.Milliseconds, 
    genres.Name AS Genre_Name
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId
WHERE tracks.GenreId NOT IN (
    /* This subquery finds the IDs of the top 5 genres by average length */
    SELECT GenreId
    FROM tracks
    GROUP BY GenreId
    ORDER BY AVG(Milliseconds) DESC
    LIMIT 5
);
