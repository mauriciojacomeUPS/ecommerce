<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FitPower | Tu mejor versión</title>
    <!-- Vinculación a Bootstrap y estilos externos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <!-- Cabecera Corporativa -->
    <header>
        <div class="container text-center">
            <a href="index.jsp">
                <img src="iconos/Titulo.png" alt="FitPower" class="logo-header">
            </a>
            <p class="slogan mb-0 text-uppercase fw-bold">Tu mejor versión comienza aquí</p>
        </div>
    </header>

    <!-- Navegación Principal -->
    <nav class="border-bottom shadow-sm">
        <div class="container text-center py-2">
            <a class="px-3 active" href="index.jsp">Inicio</a> 
            <a class="px-3" href="productos.jsp">Productos</a> 
            <a class="px-3" href="servicios.jsp">Servicios</a> 
            <a class="px-3" href="contacto.jsp">Contacto</a>
            <a class="px-3" href="login.jsp">Login</a>
        </div>
    </nav>

    <!-- Contenido Principal -->
    <main class="container my-5">
        <div class="row">
            
            <!-- Sección de Artículos -->
            <section class="col-lg-8">
                <!-- 1er Article: Misión -->
                <article class="mision-container mb-5 text-center text-lg-start">
                    <h3 class="display-6 fw-bold mb-3">Nuestra misión</h3>
                    <p class="fs-5 text-muted">
                        En <strong>FitPower</strong>, nuestra misión es transformar vidas a través del bienestar integral. 
                        Con 12 años de experiencia en Ibarra, ofrecemos lo mejor en nutrición y entrenamiento.
                    </p>
                    <img src="imagenes/logo.png" alt="Logo FitPower" class="img-fluid rounded shadow-sm d-block mx-auto mx-lg-0 mt-3" style="max-width: 180px;" />
                </article>

                <!-- NUEVO 2do Article: Entorno 3D del Gimnasio -->
                <article class="mb-5 text-center text-lg-start">
                    <h3 class="fw-bold mb-4">Explora nuestro gimnasio en 3D</h3>
                    <div class="ratio ratio-16x9 shadow rounded-4 overflow-hidden border">
                        <iframe 
                            title="Gym 3D" 
                            frameborder="0" 
                            allowfullscreen 
                            src="https://sketchfab.com/models/fbd1baf5f56743e6bd4299ad91473b9a/embed">
                        </iframe>
                    </div>
                </article>

                <!-- 3er Article: Ubicación Google Maps -->
                <article class="mb-5 text-center text-lg-start">
                    <h3 class="fw-bold mb-4">Encuéntranos aquí</h3>
                    <div class="ratio ratio-16x9 shadow rounded-4 overflow-hidden">
                        <iframe 
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31915.11186711584!2d-78.13693246830598!3d0.35080036125021575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e2a3cf20275a5e3%3A0x6331908959d7b426!2sIbarra!5e0!3m2!1ses!2sec!4v1714785000000!5m2!1ses!2sec" 
                            style="border:0;" 
                            allowfullscreen="" 
                            loading="lazy">
                        </iframe>
                    </div>
                </article>

                <!-- 4to Article: Carrusel de Equipamiento -->
                <article>
                    <h2 class="mb-4 fw-bold">Equipamiento y suplementos</h2>
                    <div id="carouselFit" class="carousel slide shadow-lg rounded-4 overflow-hidden" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="imagenes/equipo2.png" class="d-block w-100" alt="Equipo">
                            </div>
                            <div class="carousel-item">
                                <img src="imagenes/equipo1.png" class="d-block w-100" alt="Entrenamiento">
                            </div>
                            <div class="carousel-item">
                                <img src="imagenes/suplementos.png" class="d-block w-100" alt="Suplementos">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselFit" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselFit" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
                </article>
            </section>

            <!-- Barra Lateral (Aside) -->
            <aside class="col-lg-4 mt-5 mt-lg-0">
                <!-- Perfil y Redes del Desarrollador -->
                <div class="perfil-desarrollador p-4 bg-white rounded-4 shadow-sm border text-center mb-4">
                    <h5 class="fw-bold mb-4">Más sobre nosotros</h5>
                    <div class="enlaces-dev">
                        <a href="https://www.linkedin.com/in/mauricio-jacome-abb628406/" target="_blank" class="btn-dev">
                            <!-- Los iconos se mantienen intactos -->
                            <img src="iconos/linkedin.png" alt="LinkedIn" style="width: 24px; margin-right: 10px;"> 
                            <span>Perfil LinkedIn</span>
                        </a> 
                        <a href="https://github.com/mauriciojacomeUPS" target="_blank" class="btn-dev">
                            <img src="iconos/github.png" alt="GitHub" style="width: 24px; margin-right: 10px;"> 
                            <span>Repositorio GitHub</span>
                        </a>
                    </div>
                </div>

                <!-- Banner de Invitación al Registro -->
                <div class="p-4 bg-danger text-white rounded-4 shadow-lg text-center border-0">
                    <h4 class="fw-bold mb-2">¿Eres nuevo en FitPower?</h4>
                    <p class="mb-4 small">Regístrate ahora para obtener planes personalizados y descuentos exclusivos.</p>
                    <a href="registro.jsp" class="btn btn-light btn-lg fw-bold w-100 shadow-sm" style="color: #dc3545;">
                        CREAR CUENTA
                    </a>
                </div>
            </aside>
            
        </div>
    </main>

    <!-- MASCOTA FLOTANTE OPTIMIZADA (CAPYBARA GYM) -->
    <!-- Se aplican estilos fijos para garantizar anclaje abajo-derecha sin bloquear la pantalla -->
    <div style="position: fixed; bottom: 20px; right: 20px; z-index: 9999; width: 170px; display: flex; flex-direction: column; align-items: flex-end; pointer-events: none;">
        <!-- Globo de diálogo -->
        <div id="bocadillo" style="display: none; background: white; border: 2px solid #ff4500; border-radius: 15px; padding: 12px; margin-bottom: 12px; position: relative; box-shadow: 0 4px 15px rgba(0,0,0,0.2); width: 100%; pointer-events: auto;">
            <p id="texto-mascota" style="margin: 0; font-size: 13px; font-weight: bold; color: #1a1a1a; text-align: center;"></p>
            <!-- Triangulito del globo -->
            <div style="position: absolute; bottom: -10px; right: 25px; width: 0; height: 0; border-left: 10px solid transparent; border-right: 10px solid transparent; border-top: 10px solid #ff4500;"></div>
        </div>
        
        <!-- Contenedor circular de la mascota -->
        <div style="width: 130px; height: 130px; border-radius: 50%; overflow: hidden; border: 4px solid #ff4500; background: #fff; box-shadow: 0 4px 10px rgba(0,0,0,0.3); pointer-events: auto;">
            <iframe title="Capybara - Gym" src="https://sketchfab.com/models/fed6232bdf4a454193334a9b1a40bef0/embed?autostart=1&transparent=1&ui_controls=0&ui_infos=0" style="width: 100%; height: 100%; border: none;"></iframe>
        </div>
    </div>

    <!-- Pie de Página (Intacto) -->
    <footer>
        <div class="container text-center">
            <div class="mb-4">
                <a href="https://www.facebook.com/TuPaginaFitPower" target="_blank" class="text-white text-decoration-none mx-3 small">
                    <img src="iconos/facebook.png" alt="FB" style="width: 20px; margin-right: 5px;"> Facebook
                </a>
                <a href="https://www.instagram.com/TuUsuarioFitPower" target="_blank" class="text-white text-decoration-none mx-3 small">
                    <img src="iconos/instagram.png" alt="IG" style="width: 20px; margin-right: 5px;"> Instagram
                </a>
                <a href="https://www.tiktok.com/@TuCuentaFitPower" target="_blank" class="text-white text-decoration-none mx-3 small">
                    <img src="iconos/tik-tok.png" alt="TK" style="width: 20px; margin-right: 5px;"> TikTok
                </a>
            </div>
            <p class="mb-0 text-white-50 small">&copy; 2026 Mauricio Jacome | FitPower</p>
            <p class="text-white-50 small" style="font-size: 0.7rem;">Última actualización: 3 de mayo de 2026</p>
        </div>
    </footer>

    <!-- Scripts de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- LÓGICA DE DIÁLOGOS DE LA MASCOTA -->
    <script>
        const mensajes = [
            "¡No olvides suscribirte para nuestras promociones! 🐾",
            "¿Ya entrenaste hoy? ¡Tu mejor versión te espera! 💪",
            "¡En FitPower transformamos tu vida! 🏋️‍♂️",
            "Recuerda hidratarte bien durante tu rutina 💧"
        ];

        function mostrarMensaje() {
            const bocadillo = document.getElementById('bocadillo');
            const textoMascota = document.getElementById('texto-mascota');
            
            // Asigna un texto aleatorio
            textoMascota.innerText = mensajes[Math.floor(Math.random() * mensajes.length)];
            
            // Muestra el bocadillo
            bocadillo.style.display = 'block';
            
            // Oculta el bocadillo después de 6 segundos
            setTimeout(() => {
                bocadillo.style.display = 'none';
            }, 6000);
        }

        // Ejecuta la función cada 15 segundos
        setInterval(mostrarMensaje, 15000);
        
        // Primer mensaje de bienvenida a los 3 segundos
        setTimeout(mostrarMensaje, 3000);
    </script>
</body>
</html>