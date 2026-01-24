package org.example.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.dao.ContactDAO;
import org.example.model.Contact;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ContactServlet", urlPatterns = {"/contact"})
public class ContactServlet extends HttpServlet {

    private final ContactDAO contactDAO = new ContactDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Contact contact = new Contact(name, email, message);
        HttpSession session = request.getSession();

        try {
            contactDAO.addContact(contact);
            session.setAttribute("message", "Thank you for contacting me! I will get back to you soon.");
            session.setAttribute("messageType", "success");
        } catch (SQLException e) {
            e.printStackTrace();
            session.setAttribute("message", "Something went wrong. Please try again later.");
            session.setAttribute("messageType", "error");
        }

        response.sendRedirect("resume.jsp#contact");
    }
}
