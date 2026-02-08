CREATE TABLE zachary_movies_data (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    genre VARCHAR(100),
    release_year INT,
    director VARCHAR(100),
    rating DOUBLE
);

INSERT INTO zachary_movies_data (title, genre, release_year, director, rating) VALUES
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 2001, 'Chris Columbus', 7.6),
('Starship Troopers', 'Sci-Fi', 1997, 'Paul Verhoeven', 7.2),
('Underworld', 'Action', 2003, 'Len Wiseman', 7.0),
('The Fellowship of the Ring', 'Fantasy', 2001, 'Peter Jackson', 8.8),
('Star Wars Episode IV: A New Hope', 'Sci-Fi', 1977, 'George Lucas', 8.6),
('Interstellar', 'Sci-Fi', 2014, 'Christopher Nolan', 8.6),
('The Martian', 'Sci-Fi', 2015, 'Ridley Scott', 8.0),
('Terminator 2', 'Action', 1991, 'James Cameron', 8.5),
('Avengers: Endgame', 'Action', 2019, 'Anthony & Joe Russo', 8.4),
('Iron Man', 'Action', 2008, 'Jon Favreau', 7.9);
