-- zachary_movies_data.sql
-- 1. Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS CSD430;

-- 2. Use the database
USE CSD430;

-- 3. Create the movies table
CREATE TABLE IF NOT EXISTS zachary_movies_data (
    movie_id INT NOT NULL AUTO_INCREMENT,  -- primary key
    title VARCHAR(100) NOT NULL,           -- movie title
    genre VARCHAR(50),                      -- movie genre
    release_year INT,                       -- year released
    rating DECIMAL(3,1),                    -- rating (0.0 to 10.0)
    PRIMARY KEY (movie_id)
);

-- 4. Insert 10 movies
INSERT INTO zachary_movies_data (title, genre, release_year, rating)
VALUES
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 2001, 7.6),
('Starship Troopers', 'Sci-Fi', 1997, 7.2),
('Underworld', 'Action', 2003, 7.0),
('The Fellowship of the Ring', 'Fantasy', 2001, 8.8),
('Star Wars Episode IV: A New Hope', 'Sci-Fi', 1977, 8.6),
('Interstellar', 'Sci-Fi', 2014, 8.6),
('The Martian', 'Sci-Fi', 2015, 8.0),
('Terminator 2', 'Action', 1991, 8.5),
('Avengers: Endgame', 'Action', 2019, 8.4),
('Iron Man', 'Action', 2008, 7.9);

-- 5. Verify table contents
SELECT * FROM movies;
