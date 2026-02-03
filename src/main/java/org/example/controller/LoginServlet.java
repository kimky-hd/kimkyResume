package org.example.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.dao.AccountDAO;
import org.example.model.Account;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private final AccountDAO accountDAO = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // If already logged in, redirect to admin
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("admin") != null) {
            resp.sendRedirect("admin/dashboard.jsp");
            return;
        }
        // Forward to login page
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        Account account = accountDAO.checkLogin(user, pass);

        if (account != null && account.getRole() == 0) { // Only role 0 (Admin)
            HttpSession session = req.getSession();
            session.setAttribute("admin", account);
            session.setMaxInactiveInterval(30 * 60); // 30 mins
            resp.sendRedirect("admin/dashboard.jsp");
        } else {
            req.setAttribute("error", "Invalid Credentials or Access Denied!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
