package com.codoacodo.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codoacodo.daos.OradorDAO;
import com.codoacodo.dto.Orador;

@WebServlet("/api/EditarController")
public class EditarController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");

        //Crear OradorDAO
        OradorDAO dao = new OradorDAO();

        //invocar el metodo obtenerPorId(id)
        Orador oradorFromDb = dao.obtenerPorId(Long.valueOf(id));

        //guardar en el request el producto
        req.setAttribute("orador", oradorFromDb);

        //ir a la siguiente pagina
        getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //int id = Integer.parseInt(req.getParameter("id"));
        //traigo de la session el id del orador a editar                
        Long id = (Long) req.getSession().getAttribute("id");

        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String mail = req.getParameter("mail");
        String tema = req.getParameter("tema");

        //Crear ProductoDAO
        OradorDAO dao = new OradorDAO();

        //invocar actualizarOrador(params)
        dao.actualizarOrador(id.intValue(), nombre, apellido, mail, tema);

        //ir a la siguiente pagina
        resp.sendRedirect(req.getContextPath() + "/api/ListadoController");
    }
}
