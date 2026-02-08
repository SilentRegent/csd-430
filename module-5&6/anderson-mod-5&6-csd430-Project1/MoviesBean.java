//Zachary Anderson
//CSD430
//2/7/26
//Project1
package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * MoviesBean - JavaBean to access movie data from CSD430 database
 */
public class MoviesBean {
    private int movieId;
    private String title;
    private String genre;
    private int releaseYear;
    private double rating;

    private final String dbURL = "jdbc:mysql://localhost:3306/CSD430";
    private final String dbUser = "student1";
    private final String dbPass = "pass";

    // ===== Getters & Setters =====
    public int getMovieId() { return movieId; }
    public void setMovieId(int movieId) { this.movieId = movieId; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }
    public int getReleaseYear() { return releaseYear; }
    public void setReleaseYear(int releaseYear) { this.releaseYear = releaseYear; }
    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    // ===== Get all movies for dropdown =====
    public List<MoviesBean> getAllMovies() {
        List<MoviesBean> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                 PreparedStatement ps = conn.prepareStatement("SELECT * FROM zachary_movies_data");
                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                    MoviesBean m = new MoviesBean();
                    m.setMovieId(rs.getInt("movie_id"));
                    m.setTitle(rs.getString("title"));
                    m.setGenre(rs.getString("genre"));
                    m.setReleaseYear(rs.getInt("release_year"));
                    m.setRating(rs.getDouble("rating"));
                    list.add(m);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // ===== Get a single movie by ID =====
    public MoviesBean getMovieById(int id) {
        MoviesBean movie = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                 PreparedStatement ps = conn.prepareStatement("SELECT * FROM zachary_movies_data WHERE movie_id = ?")) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        movie = new MoviesBean();
                        movie.setMovieId(rs.getInt("movie_id"));
                        movie.setTitle(rs.getString("title"));
                        movie.setGenre(rs.getString("genre"));
                        movie.setReleaseYear(rs.getInt("release_year"));
                        movie.setRating(rs.getDouble("rating"));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movie;
    }
}