package kz.bitlab.servlets;


import db.DbManager;
import models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(value = "/Sprint1")
public class SprintTask_I_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("Tasks", DbManager.getTasks());
        req.getRequestDispatcher("sprint_I.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String date = req.getParameter("date");
        String action = req.getParameter("action");

        DbManager.addTask(new Task(name, description, date));

        System.out.println(DbManager.getTasks());

        resp.sendRedirect("/Sprint1");
    }
}
