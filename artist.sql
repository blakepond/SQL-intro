-- add 3 artists to artist table
INSERT INTO artist(name,artist_id)
VALUES 
('Tchami',276),
('Phlegmatic Dogs',277),
('Dillon Francis',278);
-- select 10 artists in reverse alphabetical order
SELECT * FROM artist
ORDER BY name DESC
LIMIT(10);
-- select 5 artists in alphabetical order
SELECT * FROM artist
WHERE artist_id < 6
ORDER BY name ASC;
-- select all artists that start with black
SELECT * FROM artist
WHERE name LIKE'Black%'
-- select artist that contain the the word black
SELECT * FROM artist
WHERE name LIKE '%Black%'