/*
Query 1: Create a new Table Music Video, that is a class of type Track (generalization) but adds the attribute Video director. A music video is a track. There cannot be a video without a track, and each track can have either no video or just one. 
*/

CREATE TABLE "MusicVideo" (
	"TrackId"	INTEGER NOT NULL,
	"video_director"	TEXT NOT NULL,
	PRIMARY KEY("TrackId"),
	FOREIGN KEY("TrackId") REFERENCES "tracks"("TrackId")
);
