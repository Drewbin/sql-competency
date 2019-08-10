SELECT * FROM games
WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'FPS');