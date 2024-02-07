<%@ page import="models.Task" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: erasi
  Date: 06.02.2024
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Детали</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/sprint_I.css">
</head>
<body>
<nav class="navbar">
    <div class="container-fluid">
        <a class="navbar-brand text-reset" href="#">Navbar</a>
    </div>
</nav>

<div class="container">
    <%
        Integer id = (Integer) request.getAttribute("id");
        List<Task> tasks = (List<Task>) request.getAttribute("tasks");
        Task task = tasks.get(id);

    %>

    <form action="/Task_change" method="post">
        <input type="text" name="id" value="<%=id%>" style="display: none">
        <input type="text" name="action" value="change" style="display: none">

        <div class="mb-3">
            <label for="Name" class="form-label">Название</label>
            <input type="text" name="name" class="form-control" id="Name" placeholder="Введите текст"
                   value="<%= task.getName()%>">
        </div>
        <div class="mb-3">
            <label for="Date" class="form-label">Крайний срок</label>
            <input type="date" name="date" class="form-control" id="Date" placeholder="Введите текст"
                   value="<%= task.getDeadline()%>">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Описание</label>
            <textarea class="form-control" name="description" id="exampleFormControlTextarea1"
                      rows="3"><%=task.getDescription()%></textarea>
        </div>
        <div class="mb-3">
            <label for="isMade" class="form-label">Выполнено</label>
            <select class="form-select" name="isMade" id="isMade" aria-label="Default select example">

                <%if (task.isMade()) {%>
                <option value="true" selected>Да</option>
                <option value="false">Нет</option>
                <%} else {%>
                <option value="true">Да</option>
                <option value="false" selected>Нет</option>
                <%}%>
            </select>
        </div>

        <a href="/Sprint1" class="btn btn-secondary">Отмена</a>
        <button type="submit" class="btn btn-primary">Изменить</button>
    </form>
    <form action="/Task_change" method="post">
        <input type="text" name="id" value="<%=id%>" style="display: none">
        <input type="text" name="action" value="delete" style="display: none">
        <button type="submit" class="btn btn-danger">Удалить</button>
    </form>
</div>
</body>
</html>
