SELECT ga.title, ge.name 
FROM games ga
JOIN genre ge ON ga.genre_id = ge.genre_id