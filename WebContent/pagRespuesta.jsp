<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/estilos.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@1,700&display=swap"
	rel="stylesheet">
</head>
<body class="p-1">

	<div class=" col-md-12 text-dark text-right">
		<p>
			Generador factura 2020 <br> Competition Part Ltda. <br> Año
			2020 JSP
		</p>
		<br> <br> <br> <br>
	</div>
	<div class="row">
		<div class=" col text-dark text-left">
			<p>
				Información de cliente <br>
				<%=request.getAttribute("nombre_cliente")%><br>
				<%=request.getAttribute("nombre_empresa")%><br> <br><%=request.getAttribute("ciudad_cliente")%><br><%=request.getAttribute("direccion_cliente")%>

			</p>
		</div>
		<div class=" col text-dark text-right">
			<p>
				Detalles de pago <br> NUM FACTURA: 1425782<br> ID FACTURA:
				10253642<br> <br>TIPO PAGO: Dinero<br>EMPRESA:
				Importadora

			</p>
		</div>
	</div>
	<br>
	<br>
	<br>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">ITEM</th>
				<th scope="col">DESCRIPCIÓN</th>
				<th scope="col">VALOR UNIDAD</th>
				<th scope="col">CANTIDAD</th>
				<th scope="col">VALOR <br> TOTAL
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">Válvulas Titanio</th>
				<td>Válvulas de carrera</td>
				<td>$ 120.000</td>
				<td><%=request.getAttribute("nValvulas")%></td>
				<td>$<%=request.getAttribute("totalValvula")%></td>
			</tr>
			<tr>
				<th scope="row">Turbo Full Carrera</th>
				<td>Turbo de competición multimarca</td>
				<td>$1.700.000</td>
				<td><%=request.getAttribute("nTurbo")%></td>
				<td>$<%=request.getAttribute("totalTurbo")%></td>
			</tr>
			<tr>
				<th scope="row">Kit de Freno Competicion</th>
				<td>Juego de discos, balatas, caliper de competicion</td>
				<td>$760.000</td>
				<td><%=request.getAttribute("nKit")%></td>
				<td>$<%=request.getAttribute("totalKit")%></td>
			</tr>
			<tr>
				<th scope="row">Sistema de refrigeración</th>
				<td>Sistema de enfriamiento motor Carrera</td>
				<td>$ 2.300.000</td>
				<td><%=request.getAttribute("nRefri")%></td>
				<td>$<%=request.getAttribute("totalRefri")%></td>
			</tr>
			<tr>
				<th scope="row">Plumillas Limpiaparabrisas standar</th>
				<td>plumillas para la lluvia</td>
				<td>$ 10.000</td>
				<td><%=request.getAttribute("nPlumillas")%></td>
				<td>$<%=request.getAttribute("totalPlumillas")%></td>
			</tr>
			<tr>
				<th></th>
				<td>VALOR TOTAL NETO <br> $<%=request.getAttribute("totalNeto")%>
				</td>
				<td>Descuento <br>
					<p class="text-align">10%</p></td>
				<td>     </td>
				<td class="text-left">VALOR TOTAL <br> $<%=request.getAttribute("valorTotal")%>
				</td>
			</tr>
		</tbody>
	</table>

	</form>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>