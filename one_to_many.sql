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

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    movie_id INT NOT NULL, 
    friend_id INT NOT NULL, 
    content TEXT, 
    stars INT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
    FOREIGN KEY (friend_id) REFERENCES friends(id) ON DELETE CASCADE
);
