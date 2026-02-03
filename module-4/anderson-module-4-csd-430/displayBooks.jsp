<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BookBean" %>

<%
    /*
     * displayBooks.jsp
     * Zachary Anderson
     * CSD 430 Module 4 Assignment
     * Date: 1/29/2026
     * Description: Display a list of books using JavaBeans and JSP scriptlets.
     */

    // Create a list to hold books
    ArrayList<BookBean> books = new ArrayList<>();

    // Add book 1
    BookBean b1 = new BookBean();
    b1.setTitle("Project Hail Mary");
    b1.setAuthor("Andy Weir");
    b1.setGenre("Science Fiction");
    b1.setPublishYear(2021);
    b1.setRating(5);
    books.add(b1);

    // Add book 2
    BookBean b2 = new BookBean();
    b2.setTitle("Dungeon Crawler Carl");
    b2.setAuthor("Matt Dinniman");
    b2.setGenre("Fantasy");
    b2.setPublishYear(2020);
    b2.setRating(5);
    books.add(b2);

    // Add book 3
    BookBean b3 = new BookBean();
    b3.setTitle("He Who Fights With Monsters");
    b3.setAuthor("Shirtaloon");
    b3.setGenre("Fantasy");
    b3.setPublishYear(2019);
    b3.setRating(4);
    books.add(b3);

    // Add book 4
    BookBean b4 = new BookBean();
    b4.setTitle("The Martian");
    b4.setAuthor("Andy Weir");
    b4.setGenre("Science Fiction");
    b4.setPublishYear(2014);
    b4.setRating(5);
    books.add(b4);

    // Add book 5
    BookBean b5 = new BookBean();
    b5.setTitle("Ready Player One");
    b5.setAuthor("Ernest Cline");
    b5.setGenre("Science Fiction");
    b5.setPublishYear(2011);
    b5.setRating(4);
    books.add(b5);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Favorite Books</title>
    <style>
        table { border-collapse: collapse; width: 80%; }
        th, td { border: 1px solid black; padding: 8px; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>

<h1>Favorite Books I Have Enjoyed</h1>

<p>This page displays book data stored in JavaBeans using JSP scriptlets. Each book has information such as title, author, genre, publication year, and personal rating.</p>

<h2>Field Descriptions</h2>
<ul>
    <li><strong>Title:</strong> Name of the book</li>
    <li><strong>Author:</strong> Author of the book</li>
    <li><strong>Genre:</strong> Book category</li>
    <li><strong>Year:</strong> Year published</li>
    <li><strong>Rating:</strong> Personal rating (1 - 5)</li>
</ul>

<h2>Book List</h2>
<table>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Genre</th>
        <th>Year</th>
        <th>Rating</th>
    </tr>
    <%
        for (BookBean book : books) {
    %>
    <tr>
        <td><%= book.getTitle() %></td>
        <td><%= book.getAuthor() %></td>
        <td><%= book.getGenre() %></td>
        <td><%= book.getPublishYear() %></td>
        <td><%= book.getRating() %>/5</td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
