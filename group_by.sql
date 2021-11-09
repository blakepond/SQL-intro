-- find the sum of total in the invoice table grouped by billing_state
SELECT SUM(total) FROM invoice
GROUP BY billing_state
-- find the average track length by album. order the table by the averages
SELECT AVG(milliseconds),album_id FROM track
GROUP BY album_id 
-- find a count of how many albums teh artist with the ids 8 and 22 have respectively. use COUNT, WHERE/IN and GROUP BY
SELECT COUNT(album_id),artist_id FROM album 
WHERE artist_id IN (8,22)
GROUP BY artist_id