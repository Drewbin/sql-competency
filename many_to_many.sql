CREATE TABLE friends (
    id SERIAL PRIMARY KEY, 
    name TEXT, 
    hair_color TEXT,
    age INT
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY, 
    title text, 
    director VARCHAR(50),
    release_date TIMESTAMP, 
    rating VARCHAR(5)
);

CREATE TABLE friend_movies (
    friend_id INT NOT NULL,
    movie_id INT NOT NULL,
    purchase_date TIMESTAMP,
    PRIMARY KEY (friend_id, movie_id),
    FOREIGN KEY (friend_id) REFERENCES friends(id) ON UPDATE CASCADE, 
    FOREITN KEY (movie_id) REFERENCES movies(id) ON UPDATE CASCADE
);

