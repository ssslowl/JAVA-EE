<%@ page import="java.util.List" %>
<%@ page import="models.Product" %><%--
  Created by IntelliJ IDEA.
  User: erasi
  Date: 01.02.2024
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home">All items</a>
                </li>
                <li class="nav-item-light">
                    <a class="nav-link" href="#">Add item</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<main>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Amount</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
    %>

    <%
        for (Product p : products){
    %>
        <tr>
        <th scope="row"> <%=products.indexOf(p) + 1%></th>
        <td><%= p.getName()%></td>
        <td><%= p.getPrice()%></td>
        <td><%= p.getAmount()%></td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>
</main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
