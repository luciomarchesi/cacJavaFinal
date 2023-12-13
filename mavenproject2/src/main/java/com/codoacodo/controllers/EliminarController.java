package com.codoacodo.controllers;

import java.io.IOException;
import com.codoacodo.daos.OradorDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/api/EliminarController")
public class EliminarController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");

        OradorDAO dao = new OradorDAO();

        dao.eliminarOrador(Integer.valueOf(id));

        resp.sendRedirect(req.getContextPath() + "/api/ListadoController");

    }
}
