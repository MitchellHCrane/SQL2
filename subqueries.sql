-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT * FROM invoice_line 
WHERE unit_price > .99

-- Get all playlist tracks where the playlist name is Music.

Select * FROM playlist_track
WHERE playlist_id IN (
	SELECT playlist_id FROM playlist
  WHERE name = 'Music'
)

-- Get all track names for playlist_id 5.

Select track.name FROM playlist_track JOIN track ON track.track_id = playlist_track.track_id
WHERE playlist_id IN (
	SELECT playlist_id FROM playlist
  WHERE playlist_id = 5
)

-- Get all tracks where the genre is Comedy.

SELECT * FROM track
WHERE genre_id IN (
  SELECT genre_id FROM genre
  WHERE genre.name = 'Comedy'
)

-- Get all tracks where the album is Fireball.

SELECT * FROM track
WHERE album_id IN (
  SELECT album_id FROM album
  WHERE title = 'Fireball'
)

-- Get all tracks for the artist Queen ( 2 nested subqueries ).

SELECT * FROM track 
WHERE album_id IN (
  SELECT album_id FROM album 
  WHERE artist_id IN (
    SELECT artist_id FROM artist 
    WHERE artist.name = 'Queen'
		
  	)
	)