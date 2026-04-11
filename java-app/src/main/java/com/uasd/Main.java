package com.uasd;

import java.sql.*;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:mysql://db:3306/uasd_catalog";
        String user = "uasd_user";
        String pass = "uasd_password";

        System.out.println("--- INICIANDO PRUEBA DE CATÁLOGO UASD ---");

        try (Connection conn = DriverManager.getConnection(url, user, pass)) {
            System.out.println("✅ Conexión establecida.");

            // Consulta para ver las carreras de Informática (ID 11 según tu captura)
            String query = "SELECT codigo_plan, nombre FROM carreras WHERE escuela_id = 11";

            try (Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(query)) {

                System.out.println("\nCarreras encontradas en la Escuela de Informática:");
                System.out.println("-------------------------------------------------");

                while (rs.next()) {
                    System.out.println(
                            "Código: " + rs.getString("codigo_plan") + " | Carrera: " + rs.getString("nombre"));
                }
            }
        } catch (SQLException e) {
            System.err.println("❌ Error en la prueba: " + e.getMessage());
        }
    }
}