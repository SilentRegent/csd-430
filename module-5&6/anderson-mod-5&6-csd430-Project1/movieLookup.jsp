<%--
    Zachary Anderson
    CSD430
    2/7/26
    Project1
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="beans.MoviesBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Database Lookup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        h2 {
            color: #333;
        }
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        select, button {
            padding: 10px;
            font-size: 14px;
            margin: 10px 5px 10px 0;
        }
        select {
            min-width: 300px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        button:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .error {
            color: red;
            background-color: #ffebee;
            padding: 10px;
            border-radius: 4px;
            margin: 10px 0;
        }
        .info {
            color: #666;
            font-size: 12px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>🎬 Movie Database Lookup</h2>
    
    <%
        // Initialize JavaBean
        MoviesBean movieBean = new MoviesBean();
        List<MoviesBean> movies = movieBean.getAllMovies();
        
        // Get selected movie ID from request
        String selectedIdStr = request.getParameter("movieId");
        MoviesBean selectedMovie = null;
        String errorMsg = null;
        
        if (selectedIdStr != null && !selectedIdStr.isEmpty()) {
            try {
                int selectedId = Integer.parseInt(selectedIdStr);
                selectedMovie = movieBean.getMovieById(selectedId);
                if (selectedMovie == null) {
                    errorMsg = "Movie not found for ID: " + selectedId;
                }
            } catch (NumberFormatException e) {
                errorMsg = "Invalid movie selection. Please try again.";
            }
        }
    %>
    
    <div class="form-container">
        <form method="post" action="movieLookup.jsp">
            <label for="movieId"><strong>Select a movie:</strong></label><br>
            <select name="movieId" id="movieId">
                <option value="">-- Choose a movie --</option>
                <% 
                for (MoviesBean m : movies) { 
                    String selected = (selectedIdStr != null && selectedIdStr.equals(String.valueOf(m.getMovieId()))) ? "selected" : "";
                %>
                    <option value="<%= m.getMovieId() %>" <%= selected %>>
                        <%= m.getTitle() %> (<%= m.getReleaseYear() %>)
                    </option>
                <% } %>
            </select>
            <button type="submit">View Details</button>
        </form>
        
        <p class="info">Database contains <%= movies.size() %> movies</p>
    </div>
    
    <% if (selectedMovie != null) { %>
        <h3>Movie Details</h3>
        <table>
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
            <tr>
                <td><strong>Movie ID</strong></td>
                <td><%= selectedMovie.getMovieId() %></td>
            </tr>
            <tr>
                <td><strong>Title</strong></td>
                <td><%= selectedMovie.getTitle() %></td>
            </tr>
            <tr>
                <td><strong>Genre</strong></td>
                <td><%= selectedMovie.getGenre() %></td>
            </tr>
            <tr>
                <td><strong>Release Year</strong></td>
                <td><%= selectedMovie.getReleaseYear() %></td>
            </tr>
            <tr>
                <td><strong>Rating</strong></td>
                <td><%= selectedMovie.getRating() %> / 10</td>
            </tr>
        </table>
    <% } %>
    
    <% if (errorMsg != null) { %>
        <div class="error">
            <strong>Error:</strong> <%= errorMsg %>
        </div>
    <% } %>
</body>
</html>