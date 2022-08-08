package com.example.cookies_task2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/home")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String age = request.getParameter("age");
        String country = request.getParameter("country");
        String gender = request.getParameter("gender");
        String creditCard = request.getParameter("creditCard");

        if(name!=null && surname!=null && country!=null && gender!=null && creditCard!=null) {
            Cookie cookie = new Cookie("name", name);
            Cookie cookie1 = new Cookie("surname", surname);
            Cookie cookie2 = new Cookie("age", age);
            Cookie cookie3 = new Cookie("country", country);
            Cookie cookie4 = new Cookie("gender", gender);
            Cookie cookie5 = new Cookie("creditCard", creditCard);

            cookie.setMaxAge(3600*24*60);
            cookie1.setMaxAge(3600*24*60);
            cookie2.setMaxAge(3600*24*60);
            cookie3.setMaxAge(3600*24*60);
            cookie4.setMaxAge(3600*24*60);
            cookie5.setMaxAge(3600*24*60);

            response.addCookie(cookie);
            response.addCookie(cookie1);
            response.addCookie(cookie2);
            response.addCookie(cookie3);
            response.addCookie(cookie4);
            response.addCookie(cookie5);
        }
        response.sendRedirect("/");
    }
}