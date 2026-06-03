package com.productos.seguridad;

import java.sql.PreparedStatement;
import com.productos.datos.Conexion;

public class usuario {
    
    private String nombre;
    private String cedula;
    private String correo;
    private String clave;
    private int estadoCivil;
    private int perfil;

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getClave() {
        return clave;
    }
    public void setClave(String clave) {
        this.clave = clave;
    }
    public int getEstadoCivil() {
        return estadoCivil;
    }
    public void setEstadoCivil(int estadoCivil) {
        this.estadoCivil = estadoCivil;
    }
    public int getPerfil() {
        return perfil;
    }
    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }
    public String getCedula() {
        return cedula;
    }
    public void setCedula(String cedula) {
        this.cedula = cedula;
    }
    
    public usuario(String nombre, String cedula, String correo, String clave, int estadoCivil, int perfil) {
        this.nombre = nombre;
        this.cedula = cedula;
        this.correo = correo;
        this.clave = clave;
        this.estadoCivil = estadoCivil;
        this.perfil = perfil;
    }
    
    public usuario() {
    }

    public String insertarCliente() {
        String result = "";
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        
        String sql = "INSERT INTO tb_usuario (id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) VALUES (?, ?, ?, ?, ?, ?)";

        try {

            if (con.getConexion() == null) {
                return "Error: No hay conexión a la base de datos.";
            }
            
            pr = con.getConexion().prepareStatement(sql);
            pr.setInt(1, 2);
            pr.setInt(2, this.getEstadoCivil());
            pr.setString(3, this.getNombre());
            pr.setString(4, this.getCedula());
            pr.setString(5, this.getCorreo());
            pr.setString(6, this.getClave());
            
            if (pr.executeUpdate() == 1) {
                result = "Inserción correcta";
            } else {
                result = "Error en la inserción";
            }
        } catch(Exception ex) {
            result = "Error SQL: " + ex.getMessage();
        } finally {
            try {
                if (pr != null) pr.close();
                if (con.getConexion() != null) con.getConexion().close();
            } catch(Exception ex) {
                System.out.print("Error al cerrar conexión: " + ex.getMessage());
            }
        }
        return result;
    }
}