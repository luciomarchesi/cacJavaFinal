package com.codoacodo.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codoacodo.daos.OradorDAO;


/*HERENCIA*/
//Create Controller es hijo de :
@WebServlet("/CreateController")
public class CreateController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String mail = req.getParameter("mail");
        String tema = req.getParameter("tema");
        //String fechaAltaString = req.getParameter("fechaAlta");

        //crear ProductoDAO
        OradorDAO dao = new OradorDAO();

        // Convertir la cadena de fecha a objeto Date
        // Date fechaAlta = null;
        // SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        //
        // try {
        //       fechaAlta = dateFormat.parse(fechaAltaString);
        //     } catch (ParseException e) {
        //       e.printStackTrace(); // Manejo de la excepción, puedes personalizarlo según tu necesidad
        //                                }
        //ejecutar el metodo crearOrador(parametros...)
        dao.crearOrador(nombre, apellido, mail, tema);

        //ctrl+shit+o
        //ir a la siguiente pagina
        resp.sendRedirect(req.getContextPath() + "/api/ListadoController");
    }
}
