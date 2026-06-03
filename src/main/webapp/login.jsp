<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.productos.datos.Conexion" %>
<%
    String alertaLogin = "";

    if (request.getParameter("btnLogin") != null) {
        String email = request.getParameter("txtEmail");
        String clave = request.getParameter("txtClave");

        Conexion cn = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // AQUÍ LLAMAMOS AL MÉTODO EXACTO DE TU CLASE
            con = cn.getConexion();
            
            if (con != null) {
                String sql = "SELECT * FROM usuarios WHERE correo = ? AND clave = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, clave);
                
                rs = ps.executeQuery();

                if (rs.next()) {
                    session.setAttribute("usuario_logueado", rs.getString("nombres"));
                    response.sendRedirect("index.jsp");
                    return; 
                } else {
                    alertaLogin = "<div class='alert alert-danger alert-dismissible fade show' role='alert'>Usuario o contraseña incorrectos.<button type='button' class='btn-close' data-bs-dismiss='alert'></button></div>";
                }
            } else {
                alertaLogin = "<div class='alert alert-danger alert-dismissible fade show' role='alert'>No hay conexión a la base de datos bd_productos.<button type='button' class='btn-close' data-bs-dismiss='alert'></button></div>";
            }
        } catch(Exception e) {
            alertaLogin = "<div class='alert alert-danger alert-dismissible fade show' role='alert'>Error SQL: " + e.getMessage() + "<button type='button' class='btn-close' data-bs-dismiss='alert'></button></div>";
        } finally {
            if (rs != null) try{ rs.close(); }catch(Exception e){}
            if (ps != null) try{ ps.close(); }catch(Exception e){}
            if (con != null) try{ con.close(); }catch(Exception e){}
        }
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FitPower | Iniciar Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #f4f7f6;">

    <header style="background-color: #333; padding: 1.5rem 0; text-align: center;">
        <div class="container">
            <a href="index.jsp"><img src="iconos/Titulo.png" alt="FitPower" style="max-width: 250px; height: auto;"></a>
            <p style="color: #fff; font-size: 0.85rem; margin-top: 5px;" class="text-uppercase fw-bold">Tu mejor versión comienza aquí</p>
        </div>
    </header>

    <nav class="border-bottom shadow-sm bg-white">
        <div class="container text-center py-2">
            <a class="px-3 text-decoration-none text-dark" href="index.jsp">Inicio</a> 
            <a class="px-3 text-decoration-none text-dark" href="productos.jsp">Productos</a> 
            <a class="px-3 text-decoration-none text-dark" href="servicios.jsp">Servicios</a> 
            <a class="px-3 text-decoration-none text-dark" href="contacto.jsp">Contacto</a>
            <a class="px-3 active fw-bold" href="login.jsp" style="border-bottom: 3px solid #ff4500;">Login</a>
        </div>
    </nav>

    <main class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                
                <div class="card shadow-lg" style="border: none; border-radius: 15px; overflow: hidden;">
                    <div style="background-color: #1a1a1a; color: white; padding: 1.5rem;" class="text-center">
                        <h3 class="mb-0 h4">Ingreso al sistema</h3>
                    </div>
                    
                    <div class="card-body p-4">
                        
                        <%= alertaLogin %>

                        <form action="login.jsp" method="post" id="formLogin" class="row g-3 needs-validation" novalidate>
                            
                            <div class="col-12">
                                <label class="form-label fw-bold">Correo Electrónico</label>
                                <input type="email" class="form-control" name="txtEmail" required>
                            </div>

                            <div class="col-12">
                                <label class="form-label fw-bold">Contraseña</label>
                                <input type="password" class="form-control" name="txtClave" required>
                            </div>

                            <div class="col-12 mt-4 d-grid gap-2">
                                <button type="submit" name="btnLogin" class="btn btn-lg shadow-sm" style="background-color: #ff4500; border: none; color: white; font-weight: bold;">
                                    Login
                                </button>
                                <button type="reset" class="btn btn-outline-secondary btn-sm">Limpiar</button>
                            </div>

                            <div class="col-12 mt-4 pt-3 border-top">
                                <div class="p-4 bg-danger text-white rounded-4 shadow-sm text-center border-0">
                                    <h4 class="fw-bold mb-2 h5">¿Eres nuevo en FitPower?</h4>
                                    <a href="registro.jsp" class="btn btn-light btn-lg fw-bold w-100 shadow-sm" style="color: #dc3545;">
                                        CREAR CUENTA
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </main>

    <div style="position: fixed; bottom: 20px; right: 20px; z-index: 9999; width: 170px; display: flex; flex-direction: column; align-items: flex-end; pointer-events: none;">
        <div style="width: 130px; height: 130px; border-radius: 50%; overflow: hidden; border: 4px solid #ff4500; background: #fff; box-shadow: 0 4px 10px rgba(0,0,0,0.3); pointer-events: auto;">
            <iframe title="Capybara - Gym" src="https://sketchfab.com/models/fed6232bdf4a454193334a9b1a40bef0/embed?autostart=1&transparent=1&ui_controls=0&ui_infos=0" style="width: 100%; height: 100%; border: none;"></iframe>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>