
CREATE TABLE friends (
    id SERIAL PRIMARY KEY, 
    name TEXT, 
    hair_color TEXT,
    age INT
);

CREATE TABLE address (
    friends_id INT NOT NULL, 
    street TEXT, 
    city VARCHAR(25),
    state TEXT, 
    PRIMARY KEY (friends_id),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES friends(id)
)