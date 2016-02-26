<%-- 
    Document   : conectionDB
    Created on : 07-feb-2016, 23:23:42
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>

        <%  Connection conConexion;
            Statement scSQL, scSQL1, scSQL2, scSQL3;
            ResultSet rs, rs1, rs2, rs3;
            ResultSetMetaData lsDatos;
            String SQL = "";
            String SQL1 = "";
            String SQL2 = "";
            String SQL3 = "";

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conConexion = DriverManager.getConnection("jdbc:mysql://localhost/restaurante",
                    "root", "");
            scSQL = conConexion.createStatement();
            scSQL1 = conConexion.createStatement();
            scSQL2 = conConexion.createStatement();
            scSQL3 = conConexion.createStatement();



            /*
             * rs = scSQL.executeQuery("SELECT nombre FROM persona_dato");
             * lsDatos = rs.getMetaData(); while (rsListaRegistros.next()) {
             * rsListaRegistros.getObject("nombre");
            }
             */
        %>

    </body>
</html>
