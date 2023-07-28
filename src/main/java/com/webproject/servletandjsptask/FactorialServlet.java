package com.webproject.servletandjsptask;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "factorialServlet", value = "/factorial")
public class FactorialServlet extends HttpServlet {


    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        int count;
        long factorial = 1;

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        // display a Factorial table that contains
        //factorials for the numbers from 0 to 10
        out.println("<table border="+1+">");
        out.println("<tr>");
        out.println("<th>Number</th>");
        out.println("<th>Factorial</th>");
        out.println("</tr>");

        for(count = 0; count <= 10; count++) {
            if(count == 0){
                out.println("<tr>");
                out.println("<td>"+count+"</td>");
                out.println("<td>"+factorial+"</td>");
                out.println("</tr>");
            }else{
                factorial *= count;
                out.println("<tr>");
                out.println("<td>"+count+"</td>");
                out.println("<td>"+factorial+"</td>");
                out.println("</tr>");
            }
        }

        out.println("</table>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}