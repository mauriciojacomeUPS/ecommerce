<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String nombre = request.getParameter("txtNombre");
    String cedula = request.getParameter("txtCedula");
    String foto = request.getParameter("fileFoto");
    String fecha = request.getParameter("mFecha");
    String color = request.getParameter("cColor");

    String provincia = "No identificada";
    if (cedula != null && cedula.length() >= 2) {
        String codigo = cedula.substring(0, 2);
        String[] provincias = {
            "", "Azuay", "Bolívar", "Cañar", "Carchi", "Cotopaxi", "Chimborazo", 
            "El Oro", "Esmeraldas", "Guayas", "Imbabura", "Loja", "Los Ríos", 
            "Manabí", "Morona Santiago", "Napo", "Pastaza", "Pichincha", 
            "Tungurahua", "Zamora Chinchipe", "Galápagos", "Sucumbíos", 
            "Orellana", "Santo Domingo", "Santa Elena"
        };
        try {
            int idx = Integer.parseInt(codigo);
            if (idx >= 1 && idx <= 24) provincia = provincias[idx];
        } catch (Exception e) { provincia = "Error"; }
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>FitPower | Registro Exitoso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body class="body-respuesta" style="background-color: #c9d6c4; display: flex; align-items: center; justify-content: center; min-height: 100vh; margin: 0; flex-direction: column;">

    <div class="container-confirmacion" style="width: 100%; max-width: 400px; text-align: center;">
        <h1 class="titulo" style="color: #4a5d4e; font-size: 2.2rem; margin-bottom: 0.5rem;">¡Registro Exitoso!</h1>
        <hr style="border-color: #b5c4b1;">
        
        <p style="color: #4a5d4e;">Bienvenido, <strong><%= nombre %></strong>.</p>

        <table class="tabla-datos" style="background-color: white; border-radius: 4px; overflow: hidden; box-shadow: 0 2px 10px rgba(0,0,0,0.1); width: 100%; border-collapse: collapse;">
            <tr>
                <td class="etiqueta" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: right; font-weight: bold; width: 50%;">Cédula:</td>
                <td class="valor" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: left; width: 50%; color: #555;"><%= cedula %></td>
            </tr>
            <tr>
                <td class="etiqueta" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: right; font-weight: bold;">Provincia de Origen:</td>
                <td class="valor" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: left; color: #555;"><%= provincia %></td>
            </tr>
            <tr>
                <td class="etiqueta" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: right; font-weight: bold;">Foto de perfil:</td>
                <td class="valor" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: left; color: #0d6efd; text-decoration: underline;">
                    <%= (foto != null && !foto.isEmpty() ? foto : "sin_foto.jpg") %>
                </td>
            </tr>
            <tr>
                <td class="etiqueta" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: right; font-weight: bold;">Mes de Nacimiento:</td>
                <td class="valor" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: left; color: #555;"><%= fecha %></td>
            </tr>
            <tr>
                <td class="etiqueta" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: right; font-weight: bold;">Color Favorito:</td>
                <td class="valor" style="padding: 12px 15px; border: 1px solid #eee; font-size: 0.9rem; text-align: left;">
                    <div class="color-box" style="background-color: <%= color %>; width: 50px; height: 22px; border-radius: 5px; display: inline-block; border: 1px solid #000;"></div>
                </td>
            </tr>
        </table>

        <a href="registro.jsp" class="btn-volver-respuesta" style="margin-top: 25px; background-color: transparent; border: 2px solid #a3c4f3; color: #6391d1; padding: 8px 25px; text-decoration: none; border-radius: 8px; display: inline-block; font-weight: bold;">Volver al Formulario</a>
    </div>

</body>
</html>