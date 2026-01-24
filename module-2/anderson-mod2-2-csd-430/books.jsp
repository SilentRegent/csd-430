<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    /*
     * Zachary Anderson
     * CSD 430 Module 2 Assignment 2
     * Date: 1/20/2026
     * Description:
     * This JSP page dynamically displays a list of books I have enjoyed reading.
     */

    String[][] books = {
        {"Project Hail Mary", "Andy Weir", "Science Fiction"},
        {"Dungeon Crawler Carl", "Matt Dinniman", "Fantasy"},
        {"He Who Fights With Monsters", "Shirtaloon", "Fantasy"},
        {"The Last Olympian", "Rick Riordan", "Fantasy"},
        {"Harry Potter and the Deathly Hallows", "J.K. Rowling", "Fantasy"}
    };
%>

<!DOCTYPE html>
<html>
<head>
    <title>Favorite Books</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <h1>Favorite Books I Have Enjoyed</h1>

    <p class="description">
        This page displays a list of books I have enjoyed reading.
        The data is dynamically generated using JSP scriptlets
        and displayed in an HTML table format.
    </p>

    <h2>Field Descriptions</h2>
    <ul>
        <li><strong>Title:</strong> Name of the book</li>
        <li><strong>Author:</strong> Person who wrote the book</li>
        <li><strong>Genre:</strong> Category of the book</li>
    </ul>

    <h2>Book List</h2>

    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
        </tr>

        <%
            for (int i = 0; i < books.length; i++) {
        %>
        <tr>
            <td><%= books[i][0] %></td>
            <td><%= books[i][1] %></td>
            <td><%= books[i][2] %></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
