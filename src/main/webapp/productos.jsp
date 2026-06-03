<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FitPower | Catálogo de Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilos.css?v=1.6" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #f4f7f6;">

    <header class="py-5 text-center" style="background-color: #1a1a1a;">
        <div class="container"> 
            <a href="index.jsp">
                <img src="iconos/Titulo.png" alt="FitPower" class="logo-header mb-3" style="max-width: 220px; height: auto;">
            </a>
            <p class="slogan mb-0 text-uppercase fw-bold text-white">Tu mejor versión comienza aquí</p>
        </div>
    </header>

    <nav class="border-bottom shadow-sm bg-white">
        <div class="container text-center py-2">
            <a class="px-3 text-decoration-none text-dark" href="index.jsp">Inicio</a> 
            <a class="px-3 active fw-bold" href="productos.jsp" style="border-bottom: 3px solid #ff4500; color: #000;">Productos</a> 
            <a class="px-3 text-decoration-none text-dark" href="servicios.jsp">Servicios</a> 
            <a class="px-3 text-decoration-none text-dark" href="contacto.jsp">Contacto</a>
            <a class="px-3 text-decoration-none text-dark" href="login.jsp">Login</a>
        </div>
    </nav>

    <main class="container my-5">
        <div class="mb-5 text-center d-flex flex-column align-items-center">
            <h2 class="fw-bold display-6">Catálogo de Equipamiento</h2>
            <div style="width: 60px; height: 4px; background-color: #ff4500; margin-top: 10px;"></div>
        </div>

        <div class="row g-4 justify-content-center">
            
            <!-- 1. MÁQUINA PROFESIONAL -->
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm card-login border-0">
                    <div class="card-header-fit text-center py-3">MÁQUINA PROFESIONAL</div>
                    <div class="card-body p-0 modelo-3d-container" style="height: 300px;">
                        <iframe title="Peck Deck" frameborder="0" allowfullscreen src="https://sketchfab.com/models/32e1b654f87e450db62a67c98044e5ee/embed?autostart=0&ui_infos=0&ui_controls=1" style="width: 100%; height: 100%; outline: none;"></iframe>
                    </div>
                    <div class="card-footer bg-white border-0 p-3">
                        <button class="btn btn-fit-primary w-100 py-2">DETALLES DEL PRODUCTO</button>
                    </div>
                </div>
            </div>

            <!-- 2. MANCUERNA 25LB -->
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm card-login border-0">
                    <div class="card-header-fit text-center py-3">MANCUERNA 25LB</div>
                    <div class="card-body p-0 modelo-3d-container" style="height: 300px;">
                        <iframe title="Dumbbells 25LB" frameborder="0" allowfullscreen src="https://sketchfab.com/models/39854395076a45daaf471ece08b9de0c/embed?autostart=0&ui_infos=0&ui_controls=1" style="width: 100%; height: 100%; outline: none;"></iframe>
                    </div>
                    <div class="card-footer bg-white border-0 p-3">
                        <button class="btn btn-fit-primary w-100 py-2">DETALLES DEL PRODUCTO</button>
                    </div>
                </div>
            </div>

            <!-- 3. MANCUERNA PRO-FIT -->
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm card-login border-0">
                    <div class="card-header-fit text-center py-3">MANCUERNA PRO-FIT</div>
                    <div class="card-body p-0 modelo-3d-container" style="height: 300px;">
                        <iframe title="Mancuerna hex SH" frameborder="0" allowfullscreen src="https://sketchfab.com/models/a354c41088014d05a3946a0485ff6fa2/embed?autostart=0&ui_infos=0&ui_controls=1" style="width: 100%; height: 100%; outline: none;"></iframe>
                    </div>
                    <div class="card-footer bg-white border-0 p-3">
                        <button class="btn btn-fit-primary w-100 py-2">DETALLES DEL PRODUCTO</button>
                    </div>
                </div>
            </div>

            <!-- 4. BOTELLA DEPORTIVA -->
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm card-login border-0">
                    <div class="card-header-fit text-center py-3">BOTELLA DEPORTIVA</div>
                    <div class="card-body p-0 modelo-3d-container" style="height: 300px;">
                        <iframe title="Botella" frameborder="0" allowfullscreen src="https://sketchfab.com/models/d1500f7234004d61ab5428c7af45aedf/embed?autostart=0&ui_infos=0&ui_controls=1" style="width: 100%; height: 100%; outline: none;"></iframe>
                    </div>
                    <div class="card-footer bg-white border-0 p-3">
                        <button class="btn btn-fit-primary w-100 py-2">DETALLES DEL PRODUCTO</button>
                    </div>
                </div>
            </div>

            <!-- 5. CALZADO RUNNING V1 -->
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm card-login border-0">
                    <div class="card-header-fit text-center py-3">CALZADO RUNNING V1</div>
                    <div class="card-body p-0 modelo-3d-container" style="height: 300px;">
                        <iframe title="Diseño de calzado 3d sin texturas" frameborder="0" allowfullscreen src="https://sketchfab.com/models/16af6d2829ce4564998f07b108ac9272/embed?autostart=0&ui_infos=0&ui_controls=1" style="width: 100%; height: 100%; outline: none;"></iframe>
                    </div>
                    <div class="card-footer bg-white border-0 p-3">
                        <button class="btn btn-fit-primary w-100 py-2">DETALLES DEL PRODUCTO</button>
                    </div>
                </div>
            </div>

            <!-- 6. CALZADO TRAINING V2 -->
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm card-login border-0">
                    <div class="card-header-fit text-center py-3">CALZADO TRAINING V2</div>
                    <div class="card-body p-0 modelo-3d-container" style="height: 300px;">
                        <iframe title="Calzado Tesis 2" frameborder="0" allowfullscreen src="https://sketchfab.com/models/9661a5ebd8c346fe91478ed7704025ec/embed?autostart=0&ui_infos=0&ui_controls=1" style="width: 100%; height: 100%; outline: none;"></iframe>
                    </div>
                    <div class="card-footer bg-white border-0 p-3">
                        <button class="btn btn-fit-primary w-100 py-2">DETALLES DEL PRODUCTO</button>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- MASCOTA FLOTANTE (CAPYBARA GYM) -->
    <div style="position: fixed; bottom: 20px; right: 20px; z-index: 9999; width: 170px; display: flex; flex-direction: column; align-items: flex-end; pointer-events: none;">
        <div id="bocadillo" style="display: none; background: white; border: 2px solid #ff4500; border-radius: 15px; padding: 12px; margin-bottom: 12px; position: relative; box-shadow: 0 4px 15px rgba(0,0,0,0.2); width: 100%; pointer-events: auto;">
            <p id="texto-mascota" style="margin: 0; font-size: 13px; font-weight: bold; color: #1a1a1a; text-align: center;"></p>
            <div style="position: absolute; bottom: -10px; right: 25px; width: 0; height: 0; border-left: 10px solid transparent; border-right: 10px solid transparent; border-top: 10px solid #ff4500;"></div>
        </div>
        <div style="width: 130px; height: 130px; border-radius: 50%; overflow: hidden; border: 4px solid #ff4500; background: #fff; box-shadow: 0 4px 10px rgba(0,0,0,0.3); pointer-events: auto;">
            <iframe title="Capybara - Gym" src="https://sketchfab.com/models/fed6232bdf4a454193334a9b1a40bef0/embed?autostart=1&transparent=1&ui_controls=0&ui_infos=0" style="width: 100%; height: 100%; border: none;"></iframe>
        </div>
    </div>

    <footer class="py-5" style="background-color: #1a1a1a;">
        <div class="container text-center">
            <div class="mb-4">
                <a href="https://www.facebook.com" target="_blank" class="text-white text-decoration-none mx-3 small">
                    <img src="iconos/facebook.png" alt="Facebook" style="width: 18px !important; height: 18px !important; vertical-align: middle; margin-right: 5px;"> Facebook
                </a>
                <a href="https://www.instagram.com" target="_blank" class="text-white text-decoration-none mx-3 small">
                    <img src="iconos/instagram.png" alt="Instagram" style="width: 18px !important; height: 18px !important; vertical-align: middle; margin-right: 5px;"> Instagram
                </a>
                <a href="https://www.tiktok.com" target="_blank" class="text-white text-decoration-none mx-3 small">
                    <img src="iconos/tik-tok.png" alt="TikTok" style="width: 18px !important; height: 18px !important; vertical-align: middle; margin-right: 5px;"> TikTok
                </a>
            </div>
            <p class="mb-0 text-white-50 small">&copy; 2026 Mauricio Jacome | FitPower</p>
        </div>
    </footer>

    <!-- Scripts de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- LÓGICA DE DIÁLOGOS DE LA MASCOTA -->
    <script>
        const mensajes = [
            "¿Buscando equipo nuevo? ¡Chequea nuestro catálogo! 🐾",
            "¡Calidad garantizada en cada producto! 💪",
            "¡En FitPower tenemos lo mejor para tu entrenamiento! 🏋️‍♂️",
            "Tip: ¡Puedes arrastrar los modelos 3D para girarlos! 🔄"
        ];

        function mostrarMensaje() {
            const bocadillo = document.getElementById('bocadillo');
            const textoMascota = document.getElementById('texto-mascota');
            
            textoMascota.innerText = mensajes[Math.floor(Math.random() * mensajes.length)];
            bocadillo.style.display = 'block';
            
            setTimeout(() => { bocadillo.style.display = 'none'; }, 6000);
        }

        setInterval(mostrarMensaje, 15000);
        setTimeout(mostrarMensaje, 3000);
    </script>
</body>
</html>