package model;

import java.io.Serializable;

/**
 * BookBean
 * Holds data about a single book.
 */
public class BookBean implements Serializable {

    private String title;
    private String author;
    private String genre;
    private int publishYear;
    private int rating;

    // No-argument constructor 
    public BookBean() {}

    // Getters and setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public int getPublishYear() { return publishYear; }
    public void setPublishYear(int publishYear) { this.publishYear = publishYear; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }
}
