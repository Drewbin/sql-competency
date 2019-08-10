CREATE TABLE games (
    id SERIAL PRIMARY KEY, 
    title TEXT, 
    genre_id INT,
    developer TEXT,
    price INT,
    player_number INT
    units_sold INT
    
)

CREATE TABLE genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR (50)
    
)

