package kz.bitlab.servlets;

import db.DbManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/Task_change")
public class task_change extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Integer id = Integer.parseInt(req.getParameter("id"));

        req.setAttribute("id", id);

        req.setAttribute("tasks", DbManager.getTasks());
        req.getRequestDispatcher("task_change.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        Integer id = Integer.valueOf(req.getParameter("id"));

        if (action.equals("change")) {
            String name = req.getParameter("name");
            String description = req.getParameter("description");
            String date = req.getParameter("date");
            boolean isMade = Boolean.parseBoolean(req.getParameter("isMade"));

            DbManager.changeTask(id, name, description, date, isMade);
        } else if (action.equals("delete")) {
            DbManager.deleteTask(id);
        }

        resp.sendRedirect("/Sprint1");
    }
}
