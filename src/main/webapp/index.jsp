<%--
  Created by IntelliJ IDEA.
  User: PROGRAMACION
  Date: 25/04/2024
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/resoncive.css">
    <title>Registro para el XXXV Triatlon Hoces de Cuenca</title>

</head>
<body>

<div class="registration-header">

    <img src="Views/img/3277738b-f542-4b8b-b4b2-944f245eec16.jpg" alt="Mi imagen">

    <h1>Registro para el XXXV Triatlon Hoces de Cuenca</h1>
    <h1>Formulario De Inscripción:</h1>
</div>

<form action="" class="col-6">

    <fieldset>
        <%--@declare id="fecha nacimiento"--%><%--@declare id="corredor local"--%>
            <legend>Datos Personales</legend>
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>

        <label for="apellidos">Apellidos:</label>
        <input type="text" id="apellidos" name="apellidos" required><br>

            <!-- Contenedor para los campos de tipo y número de documento -->
            <div class="form-row-document">
                <!-- Campo de selección del tipo de documento -->
                <label for="tipo_documento">Tipo de Documento:</label>
                <select id="tipo_documento" name="tipo_documento" required>
                    <option value="">Selecciona</option>
                    <option value="Pasaporte">Pasaporte</option>
                    <option value="DNI">DNI</option>
                    <option value="Tarjeta de residenteNIE">NIE</option>
                    <option value="Menor">Menor</option>
                    <option value="Otro">Otro</option>
                    <!-- agregar más opciones según sea necesario -->
                </select>
                <!-- Campo de entrada para el número de documento -->
                <label for="numero_documento">Número de Documento:</label>
                <input type="text" id="numero_documento" name="numero_documento" required>
            </div>

            <label for="fecha nacimiento">Fecha de Nacimiento:</label><br>
            <select id="dia" name="dia" required>
                <option value="">Dia</option>

                <!-- Generar opciones para los días del mes -->
                <% for (int i = 1; i <= 31; i++) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>
            <select id="mes" name="mes" required>
                <option value="">Mes</option>

                <!-- Generar opciones para los meses -->
                <option value="1">Enero</option>
                <option value="2">Febrero</option>
                <option value="3">Marzo</option>
                <option value="4">Abril</option>
                <option value="5">Mayo</option>
                <option value="6">Junio</option>
                <option value="7">Julio</option>
                <option value="8">Agosto</option>
                <option value="9">Septiembre</option>
                <option value="10">Octubre</option>
                <option value="11">Noviembre</option>
                <option value="12">Diciembre</option>
            </select>
            <select id="ano" name="ano" required>
                <option value="">Año</option>

                <!-- Generar opciones para los años -->
                <% for (int i = 1900; i <= 9999; i++) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select><br>

            <!-- Generar opciones para genero -->
            <label for="genero">Genero:</label>
        <select id="genero" name="genero" required>
            <option value="">Selecciona</option>
            <option value="masculino">Masculino</option>
            <option value="femenino">Femenino</option>
            <option value="otro">Otro</option>
        </select><br>

            <!-- opciones para categoria -->
        <label for="categoria">Categoria:</label>
        <select id="categoria" name="categoria" required>
            <option value="">Selecciona</option>
            <option value="adulto">Adulto</option>
            <option value="juvenil">Juvenil</option>
            <option value="infantil">Infantil</option>
        </select><br>

            <!--  opcion para el email -->
        <label for="email">Correo Electronico:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="confirmar_email">Repite Correo Electronico:</label>
        <input type="email" id="confirmar_email" name="confirmar_email" required><br>

            <!-- Generar opciones para telefono -->
            <label for="telefono">Teléfono:</label>
            <select id="codigo_pais" name="codigo_pais" required>
                <option value="">Selecciona</option>
                <option value="+1">+1 (EE. UU.)</option>
                <option value="+34">+34 (España)</option>
                <option value="+44">+44 (Reino Unido)</option>
                <!-- se pueden agregar más códigos de país según sea necesario -->
            </select>
            <input type="tel" id="telefono" name="telefono" required><br>


            <!-- Generar opciones para pais y provincia -->
            <label for="pais_provincia">País / Provincia:</label>
            <select id="pais_provincia" name="pais_provincia" required>
                <option value="">Selecciona</option>
                <optgroup label="España">
                    <option value="madrid">Madrid</option>
                    <option value="barcelona">Barcelona</option>
                    <option value="andalucia">Andalucía</option>
                    <option value="castilla y leon">Castilla y León.</option>
                    <option value="castilla la mancha"> Castilla-La Mancha.</option>
                   <!-- Agregar más provincias de España según sea necesario -->
                </optgroup>
                <optgroup label="Francia">
                    <option value="grande est">Grande Est</option>
                    <option value="nueva aquitania">Nueva Aquitania </option>
                    <option value="occitania">Occitania</option>
                    <option value="alta francia">Alta Francia</option>
                <optgroup label="Italia"> <!-- se pueden agregar más países de Europa según sea necesario -->
                    <option value="lombardia">Lombardia </option>
                    <option value="veneto">Veneto</option>
                    <option value="umbria"> Umbría </option>
                    <option value="calabria">Calabria</option>

            </select><br>
            <!--  opcion para poblacion -->

        <label for="poblacion">Poblacion:</label>
        <input type="text" id="poblacion" name="poblacion" required><br>

            <!--  opciones para nacionalidad -->
            <label for="nacionalidad">Nacionalidad:</label>
            <select id="nacionalidad" name="nacionalidad" required>
                <option value="">Selecciona</option>
                <optgroup label="Europa">
                    <option value="espanola">Española</option>
                    <option value="francesa">Francesa</option>
                    <option value="italiana">Italiana</option>
                    <!-- se pueden agregar más nacionalidades de Europa según sea necesario -->
                </optgroup>
                <optgroup label="América">
                    <option value="argentina">Argentina</option>
                    <option value="brasilena">Brasileña</option>
                    <option value="mexicana">Mexicana</option>

                </optgroup>
                <optgroup label="Asia">
                    <option value="china">China</option>
                    <option value="japonesa">Japonesa</option>
                    <option value="india">India</option>

                </optgroup>
                <!-- agregar más continentes según sea necesario -->
            </select><br>

        <label for="Corredor local">Eres corredor local?</label><br>
        <input type="radio" id="corredor local si" name="corredor_local" value="si" required>
        <label for="corredor local si">Si</label>
        <input type="radio" id="corredor_local_no" name="corredor_local" value="no" required>
        <label for="corredor_local_no">No</label><br>

            <!--elegir talla  -->
        <label for="talla_camiseta">Talla de Camiseta:</label>
        <select id="talla_camiseta" name="talla_camiseta" required>
            <option value="">Selecciona</option>
            <option value="XS">XS</option>
            <option value="S">S</option>
            <option value="M">M</option>
            <option value="L">L</option>
            <option value="XL">XL</option>
            <option value="XXL">XXL</option>
        </select><br>

        <label for="aceptar_reglamento">Acepto el reglamento de la prueba XXXV Triatlon Hoces de Cuenca 24:</label>
        <input type="checkbox" id="aceptar_reglamento" name="aceptar_reglamento" required><br>
    </fieldset>

    <button type="submit">Enviar</button>
</form>
</body>
</html>
