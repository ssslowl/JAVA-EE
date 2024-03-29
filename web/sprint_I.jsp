<%@ page import="java.util.List" %>
<%@ page import="models.Task" %><%--
  Created by IntelliJ IDEA.
  User: erasi
  Date: 06.02.2024
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sprint 1</title>

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
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
        + Добавить задание
    </button>


    <table class="table">
        <thead>
        <tr>
            <th class="col-sm-1" id="id">#</th>
            <th class="col-md-4" id="taskName">Название</th>
            <th class="col-md-3" id="date7">Дедлайн</th>
            <th class="col-md-2" id="isMade">Выполнено</th>
            <th class="col-md-2" id="details">Детали</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Task> tasks = (List<Task>) request.getAttribute("Tasks");
            for (Task t : tasks) {%>
        <tr>

            <td><%=tasks.indexOf(t) + 1%>
            </td>
            <td><%=t.getName()%>
            </td>
            <td><%=t.getDeadline()%>
            </td>
            <td><%if (t.isMade()) {%>
                Да
                <%}else{%>
                Нет
                <%}%>
            </td>
            <td><a href="/Task_change?id=<%=tasks.indexOf(t)%>" class="btn btn-primary">Детали</a></td>
        </tr>

        <%}%>
        </tbody>
    </table>


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Новое задание</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/Sprint1" method="post">
                    <div class="modal-body">
                        <input type="text" style="display: none" name="action" value="create">
                        <div class="mb-3">
                            <label for="Name" class="form-label">Название</label>
                            <input type="text" name="name" class="form-control" id="Name" placeholder="Введите текст">
                        </div>
                        <div class="mb-3">
                            <label for="Date" class="form-label">Крайний срок</label>
                            <input type="date" name="date" class="form-control" id="Date" placeholder="Введите текст">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Описание</label>
                            <textarea class="form-control" name="description" id="exampleFormControlTextarea1"
                                      rows="3"></textarea>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Добавить задание</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

</div>
</body>
</html>
