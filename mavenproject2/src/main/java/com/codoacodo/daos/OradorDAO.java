package com.codoacodo.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.codoacodo.connection.AdministradorDeConexiones;
import com.codoacodo.dto.Orador;
import java.sql.PreparedStatement;

public class OradorDAO {

    private static final String SQL_DELETE = "DELETE FROM ORADORES WHERE id_orador = ?";

    /*metodos del crud*/
    public Orador obtenerPorId(Long id) {
        String sql = "SELECT * FROM ORADORES WHERE id_orador=" + id;

        //Connection
        Connection con = AdministradorDeConexiones.getConnection();

        Orador oradFromDb = null;

        //Statement
        try {
            Statement st = con.createStatement();

            //resultset
            ResultSet rs = st.executeQuery(sql);

            //VIENE UN SOLO REGISTRO!!!
            if (rs.next()) {//si existe, hay uno solo
                // rs > sacando los datos
                Long idOrador = rs.getLong(1);//tomar la primer columna
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getNString(4);
                String tema = rs.getString(5);
                Date fechaAlta = rs.getDate(6);

                //campos crear un objeto
                oradFromDb = new Orador(idOrador, nombre, apellido, mail, tema, fechaAlta);
            }
        } catch (SQLException e) {
            // ERRORES
            e.printStackTrace();
        }
        return oradFromDb;
    }


    /*metodos del crud*/
    public List<Orador> listarOradores() {
        String sql = "SELECT * FROM ORADORES ";

        //Connection
        Connection con = AdministradorDeConexiones.getConnection();

        List<Orador> list = new ArrayList<>();

        //Statement
        try {
            Statement st = con.createStatement();

            //resultset
            ResultSet rs = st.executeQuery(sql);

            //VIENE UN SOLO REGISTRO!!!
            while (rs.next()) {//
                // rs > sacando los datos
                Long idOrador = rs.getLong(1);//tomar la primer columna
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Date fechaAlta = rs.getDate(6);

                //campos crear un objeto????
                Orador prodFromDb = new Orador(idOrador, nombre, apellido, mail, tema, fechaAlta);

                //agrego a la lista 
                list.add(prodFromDb);
            }

            //cierro la conexion
            con.close();
        } catch (SQLException e) {
            // ERRORES
            e.printStackTrace();
        }
        return list;
    }

    /*crear un producto en la db*/
    public void crearOrador(String nombre, String apellido, String mail, String tema) {

        Connection con = AdministradorDeConexiones.getConnection();

        if (con != null) {
            // insert en la db > SQL: INSERT INTO....
            String sql = "INSERT INTO ORADORES (nombre, apellido, mail, tema, fecha_alta) ";
            sql += "VALUES('" + nombre + "','" + apellido + "','" + mail + "','" + tema + "',CURRENT_DATE)";

            //control de errores
            try {
                Statement st = con.createStatement();
                st.execute(sql);

                //cierre de conexion
                con.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void actualizarOrador(int id, String nombre, String apellido, String mail, String tema) {
        Connection con = AdministradorDeConexiones.getConnection();
        if (con != null) {

            String sql = "UPDATE ORADORES SET NOMBRE = ?, APELLIDO = ?, MAIL = ?, TEMA = ? WHERE id_orador = ?;";

            try {
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, nombre);
                st.setString(2, apellido);
                st.setString(3, mail);
                st.setString(4, tema);
                st.setInt(5, id);
                st.executeUpdate();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /*metodos del crud*/
    public List<Orador> buscar(String clave) {
        String sql = "SELECT * FROM ORADORES WHERE nombre LIKE '%" + clave + "%' ";

        //Connection
        Connection con = AdministradorDeConexiones.getConnection();

        List<Orador> listado = new ArrayList<Orador>();

        //Statement
        try {
            Statement st = con.createStatement();

            //resultset
            ResultSet rs = st.executeQuery(sql);

            //VIENE UN SOLO REGISTRO!!!
            while (rs.next()) {//si existe, hay uno solo
                // rs > sacando los datos
                Long idOrador = rs.getLong(1);//tomar la primer columna
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String mail = rs.getString(4);
                String tema = rs.getString(5);
                Date fechaAlta = rs.getDate(6);

                //campos crear un objeto
                Orador prodFromDb = new Orador(idOrador, nombre, apellido, mail, tema, fechaAlta);

                listado.add(prodFromDb);
            }
        } catch (SQLException e) {
            // ERRORES
            e.printStackTrace();
        }

        return listado;
    }

    public int eliminarOrador(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;

        try {
            conn = AdministradorDeConexiones.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setLong(1, id);
            registros = stmt.executeUpdate();
        } catch (SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }

        return registros;
    }
}
