/*
Query 3:  Insert another video for the track "Voodoo", assuming that you don't know the TrackId, so your insert query should specify the TrackId directly.
*/

INSERT INTO MusicVideo (TrackId, video_director)
    SELECT TrackId, 'John Doe'
    FROM tracks
    WHERE title = 'Voodoo';
