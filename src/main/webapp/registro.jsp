<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.productos.datos.Conexion" %>
<%
    String alertaRegistro = "";

    if (request.getParameter("btnRegistrar") != null) {
        String nombres = request.getParameter("txtNombre");
        String cedula = request.getParameter("txtCedula");
        int estadoCivil = 1; 
        try { estadoCivil = Integer.parseInt(request.getParameter("cmbEstado")); } catch(Exception e){}
        
        String email = request.getParameter("txtEmail");
        String clave = request.getParameter("txtClave");
        int idPerfil = 1; 

        Conexion cn = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = cn.getConexion();
            
            if (con != null) {
                String sql = "INSERT INTO tb_usuario (nombre_us, cedula_us, id_est, correo_us, clave_us, id_per) VALUES (?, ?, ?, ?, ?, ?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, nombres);
                ps.setString(2, cedula);
                ps.setInt(3, estadoCivil);
                ps.setString(4, email);
                ps.setString(5, clave);
                ps.setInt(6, idPerfil);
                
                int filas = ps.executeUpdate();
                if (filas > 0) {
                    // AQUÍ ESTÁ EL CAMBIO: Redirige a respuesta.jsp llevándose los datos del request
                    request.getRequestDispatcher("respuesta.jsp").forward(request, response);
                    return; // Corta la ejecución de este JSP
                } else {
                    alertaRegistro = "<div class='alert alert-warning text-center shadow-sm'>No se pudo registrar. Verifica los datos.</div>";
                }
            } else {
                alertaRegistro = "<div class='alert alert-danger text-center shadow-sm'>Falla de conexión a la base de datos.</div>";
            }
        } catch(Exception e) {
            alertaRegistro = "<div class='alert alert-danger text-center shadow-sm'>Error SQL: " + e.getMessage() + "</div>";
        } finally {
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
    <title>FitPower | Registro de Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <header style="background-color: #333; padding: 1.5rem 0; text-align: center;">
        <div class="container">
            <a href="index.jsp">
                <img src="iconos/Titulo.png" alt="FitPower" style="max-width: 250px; height: auto;">
            </a>
            <p style="color: #fff; font-size: 0.85rem; margin-top: 5px;" class="text-uppercase fw-bold">Tu mejor versión comienza aquí</p>
        </div>
    </header>

    <nav class="border-bottom shadow-sm">
        <div class="container text-center py-2">
            <a class="px-3 text-decoration-none text-dark" href="index.jsp">Inicio</a> 
            <a class="px-3 text-decoration-none text-dark" href="productos.jsp">Productos</a> 
            <a class="px-3 text-decoration-none text-dark" href="servicios.jsp">Servicios</a> 
            <a class="px-3 text-decoration-none text-dark" href="contacto.jsp">Contacto</a>
            <a class="px-3 active fw-bold" href="registro.jsp" style="border-bottom: 3px solid #ff4500;">Registro</a>
        </div>
    </nav>

    <main class="container my-5">
        <div class="row justify-content-center">
            <section class="col-lg-10">
                
                <article class="card shadow-lg" style="border: none; border-radius: 15px; overflow: hidden;">
                    
                    <div style="background-color: #1a1a1a; color: white; padding: 1.5rem;">
                        <h2 class="mb-0 h4">Formulario de Registro - FitPower</h2>
                    </div>
                    
                    <div class="card-body p-4">
                        
                        <%= alertaRegistro %>

                        <form action="registro.jsp" method="post" id="formRegistro" class="row g-3 needs-validation" novalidate>

                            <div class="col-md-6">
                                <label class="form-label fw-bold">Nombre Completo</label>
                                <input type="text" class="form-control" name="txtNombre" required>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label fw-bold">Cédula (10 dígitos)</label>
                                <input type="text" class="form-control" id="cedula" name="txtCedula" maxlength="10" required pattern="\d{10}">
                                <div id="provinciaDetectada" class="form-text text-danger fw-bold small"></div>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label fw-bold">Estado Civil</label>
                                <select class="form-select" name="cmbEstado">
                                    <option value="1">Soltero</option>
                                    <option value="2">Casado</option>
                                    <option value="3">Divorciado</option>
                                    <option value="4">Viudo</option>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label d-block fw-bold">Sector de Residencia</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="rdResidencia" value="Sur" checked>
                                    <label class="form-check-label">Sur</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="rdResidencia" value="Norte">
                                    <label class="form-check-label">Norte</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="rdResidencia" value="Centro">
                                    <label class="form-check-label">Centro</label>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label fw-bold">Foto de Perfil</label>
                                <input type="file" class="form-control" name="fileFoto" accept=".jpg, .jpeg, .png">
                            </div>

                            <div class="col-md-4">
                                <label class="form-label fw-bold">Mes/Año Nacimiento</label>
                                <input type="month" class="form-control" name="mFecha" required>
                            </div>

                            <div class="col-md-8">
                                <label class="form-label fw-bold">Color del Perfil</label>
                                <input type="color" class="form-control form-control-color w-100" name="cColor" value="#ff4500" style="height: 45px;">
                            </div>

                            <hr class="my-4">

                            <div class="col-md-6">
                                <label class="form-label fw-bold">Correo Electrónico</label>
                                <input type="email" class="form-control" name="txtEmail" placeholder="usuario@ejemplo.com" required>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label fw-bold">Contraseña</label>
                                <input type="password" class="form-control" name="txtClave" required>
                            </div>

                            <div class="col-12 mt-4 text-center">
                                <button type="submit" name="btnRegistrar" class="btn px-5 btn-lg shadow-sm" 
                                        style="background-color: #ff4500; border: none; color: white; font-weight: bold;">
                                    Registrar
                                </button>
                                <button type="reset" class="btn btn-secondary px-5 btn-lg">
                                    Borrar
                                </button>
                            </div>
                        </form>
                    </div>
                </article>

            </section>
        </div>
    </main>

    <footer style="background-color: #222; padding: 2rem 0;">
        <div class="container text-center">
            <p class="mb-0 text-white-50 small">&copy; 2026 Mauricio Jacome | FitPower</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('cedula').addEventListener('input', function() {
            const ced = this.value;
            const provLabel = document.getElementById('provinciaDetectada');
            const provincias = {"01":"Azuay","02":"Bolívar","03":"Cañar","04":"Carchi","05":"Cotopaxi","06":"Chimborazo","07":"El Oro","08":"Esmeraldas","09":"Guayas","10":"Imbabura","11":"Loja","12":"Los Ríos","13":"Manabí","14":"Morona Santiago","15":"Napo","16":"Pastaza","17":"Pichincha","18":"Tungurahua","19":"Zamora Chinchipe","20":"Galápagos","21":"Sucumbíos","22":"Orellana","23":"Santo Domingo","24":"Santa Elena","30":"Exterior"};
            if (ced.length >= 2) {
                const codigo = ced.substring(0, 2);
                provLabel.innerText = provincias[codigo] ? "Provincia: " + provincias[codigo] : "Código no válido";
            } else { provLabel.innerText = ""; }
        });

        (() => {
          'use strict'
          const forms = document.querySelectorAll('.needs-validation')
          Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
              if (!form.checkValidity()) { event.preventDefault(); event.stopPropagation(); }
              form.classList.add('was-validated');
            }, false)
          })
        })()
    </script>
</body>
</html>