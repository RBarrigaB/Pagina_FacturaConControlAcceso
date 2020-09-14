<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingreso valores</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/estilos.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@1,700&display=swap"
	rel="stylesheet">
</head>
<body class="p-3">

	<nav>
		<div class="text-left md-3">
			Sesión
			<%=request.getParameter("usuario")%>
			, <a href="CerrarSesion"> Cerrar Sesión</a>
		</div>
	</nav>
	<form action="RecepcionDatos" method="POST">

		<div class=" col-md-12 text-dark">


			<div class=" text-right md-3">
				Generador factura 2020 <br> Competition Part Ltda. <br>
				Año 2020 JSP
			</div>
			<br>
		</div>


		<div class="row text-left">
			<div class="col">
				<p style="text-align: left;">Nombre Completo</p>
				<input type="text" class="form-control" name="nombre" required>
			</div>
			<div class="col">
				<p>Empresa</p>
				<input type="text" class="form-control" name="nombreEmpresa"
					required>
			</div>
			<div class="col">
				<p>Rut</p>
				<input id="rut" type="text" class="form-control" name="rut" required>
			</div>
		</div>
		<br>
		<div class="row text-left">
			<div class="col">
				<p style="text-align: left;">Dirección</p>
				<input type="text" class="form-control" name="direccion" required>
			</div>
			<div class="col">
				<p>Ciudad</p>
				<input type="text" class="form-control" name="ciudad" required>
			</div>
			<div class="col">
				<p>País</p>
				<input id="rut" type="text" class="form-control" name="pais"
					required>
			</div>
		</div>
		<br> <br>
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">ITEM</th>
					<th scope="col">DESCRIPCIÓN</th>
					<th scope="col">VALOR UNIDAD</th>
					<th scope="col">CANTIDAD</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">Válvulas Titanio</th>
					<td>Válculas de carrera</td>
					<td id="precio_valvula">$ 120.000</td>
					<td><input id="valvulaT" type="text" name="valvula-titanio"
						required></td>
				</tr>
				<tr>
					<th scope="row">Turbo Full Carrera</th>
					<td>Turbo de competición multimarca</td>
					<td id="precio_turbo">$1.700.000</td>
					<td><input id="turboF" type="text" name="turbo-carrera"
						required></td>
				</tr>
				<tr>
					<th scope="row">Kit de Freno Competicion</th>
					<td>Juego de discos, balatas, caliper de competicion</td>
					<td id="precio_kit">$760.000</td>
					<td><input id="kitF" type="text" name="kit-freno" required>
					</td>
				</tr>
				<tr>
					<th scope="row">Sistema de refrigeración</th>
					<td>Sistema de enfriamiento motor Carrera</td>
					<td id="precio_refrigeracion">$ 2.300.000</td>
					<td><input id="enfriamMT" type="text"
						name="enfriamiento-motor" required></td>
				</tr>
				<tr>
					<th scope="row">Plumillas Limpiaparabrisas standar</th>
					<td>plumillas para la lluvia</td>
					<td id="precio_plumillas">$ 10.000</td>
					<td><input id="plumillas" type="text" name="plumillas-lluvia"
						required></td>
				</tr>
			</tbody>
		</table>

		<div class="row">
			<div class="col-12 text-right">
				<button id="generar" type="submit" class="btn btn-success">Generar
					Factura</button>

				<button id="limpiar" type="reset" value="Reset"
					class="btn btn-secondary">Limpiar</button>
			</div>

		</div>

	</form>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>