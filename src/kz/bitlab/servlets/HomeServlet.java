package kz.bitlab.servlets;

import db.DbManager;
import models.Developer;
import models.Product;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


@WebServlet(value = "/home")

public class HomeServlet extends HttpServlet {



    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//TASK 4 OUT
//        String name = request.getParameter("name");
//        String surname = request.getParameter("surname");
//        String food = request.getParameter("food");
//
//        PrintWriter out = response.getWriter();
//
//        out.print(name + " " + surname + " ordered: " + food);

    }



    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();


// TASK 1
//        for (int i = 0; i < 10; i++) {
//            out.println("<h1>hello world</h1>");
//        }

// TASK 2
//        out.print("<table>");
//        out.print("<thead>");
//        out.print("<th>NAME</th>"+
//                "<th>SURNAME</th>"+
//                "<th>DEPARTMENT</th>"+
//                "<th>SALARY</th>" +
//                "</thead>");
//
//        out.print("<tbody>");
//
//            for (Developer dev: developers){
//                out.print("<tr>");
//                out.print("<td>"+dev.getName()+"</td>");
//                out.print("<td>"+dev.getSurname()+"</td>");
//                out.print("<td>"+dev.getDepartment()+"</td>");
//                out.print("<td>"+dev.getSalary()+"</td>");
//                out.print("</tr>");
//
//            }
//        out.print("</tbody>");
//        out.print("</table>");


//TASK 4
//        out.print("<form submit = '' method = 'post'>");
//            out.print("<label>NAME:</label>");
//            out.print("<input name = 'name' type = 'text'>");
//            out.print("<br>");
//
//            out.print("<label>SURNAME:</label>");
//            out.print("<input name = 'surname' type = 'text'>");
//            out.print("<br>");
//
//            out.print("<label>FOOD:</label>");
//            out.print("<input name = 'food' type = 'text'>");
//            out.print("<br>");
//
//            out.print("<input type = 'submit' value = 'submit'>");
//
//        out.print("</form>");

        List<Developer> developers = DbManager.getDevelopers();
        List<Product> products = DbManager.getProducts();

        request.setAttribute("products", products);
        request.getRequestDispatcher("home.jsp").forward(request, response);


    }

}