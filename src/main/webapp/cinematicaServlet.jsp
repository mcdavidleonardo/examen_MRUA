<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movimiento rectilineo uniformemente variado</title>

    <!-- Enlace a la hoja de estilos de Bootstrap (CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Movimiento Rectilíneo Uniformemente Variado</h1>

    <div class="card shadow-sm">
        <div class="card-body">
            <%
                double aceleracion = Double.parseDouble(request.getParameter("aceleracion"));
                double velocidad_ini = Double.parseDouble(request.getParameter("velocidad"));
                double tiempo_adi = Double.parseDouble(request.getParameter("tiempo"));
                double distancia = velocidad_ini * tiempo_adi + 0.5 * aceleracion * Math.pow(tiempo_adi, 2);
                double velocidad_fin = velocidad_ini + aceleracion * tiempo_adi;
            %>

            <h3>Datos:</h3>
            <ul class="list-group">
                <li class="list-group-item">Aceleración: <strong><%out.print(aceleracion);%> m/s²</strong></li>
                <li class="list-group-item">Velocidad Inicial: <strong><%out.print(velocidad_ini);%> m/s</strong></li>
                <li class="list-group-item">Tiempo adicional: <strong><%out.print(tiempo_adi);%> s</strong></li>
            </ul>

            <h3 class="mt-4">Cálculos:</h3>
            <ul class="list-group">
                <li class="list-group-item">Tiempo empleado: <strong><%out.print(tiempo_adi);%> s</strong></li>
                <li class="list-group-item">Distancia recorrida: <strong><%out.print(distancia / 1000);%> km</strong></li>
                <li class="list-group-item">Velocidad Final: <strong><%out.print(velocidad_fin / 1000);%> km/s</strong></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
