package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RespuestaUsuario")
public class RespuestaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Taking variables
		String nombre = request.getParameter("nombre");
		String nombreEmpresa = request.getParameter("nombreEmpresa");
		String rutCliente = request.getParameter("rut");
		String direccion = request.getParameter("direccion");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");
		int cant_valvulas = Integer.parseInt(request.getParameter("valvula-titanio"));
		int cant_turbo = Integer.parseInt(request.getParameter("turbo-carrera"));
		int cant_kit = Integer.parseInt(request.getParameter("kit-freno"));
		int cant_refri = Integer.parseInt(request.getParameter("enfriamiento-motor"));
		int cant_plumillas = Integer.parseInt(request.getParameter("plumillas-lluvia"));

		// Setting prices
		int precio_valvula = 120000;
		int precio_turbo = 1700000;
		int precio_kit = 760000;
		int precio_refri = 2300000;
		int precio_plumillas = 10000;
		
		int total_valvula = cant_valvulas * precio_valvula;
		int total_turbo = cant_turbo * precio_turbo;
		int total_kit = cant_kit * precio_kit;
		int total_refri = cant_refri * precio_refri;
		int total_plumillas = cant_plumillas * precio_plumillas;
		int total_neto = total_valvula + total_turbo + total_kit + total_refri + total_plumillas;
		int valor_total = (int) (total_neto * 0.9);

		// Setting values
		request.setAttribute("nombre_cliente", nombre);
		request.setAttribute("nombre_empresa", nombreEmpresa);
		request.setAttribute("rut_cliente", rutCliente);
		request.setAttribute("direccion_cliente", direccion);
		request.setAttribute("ciudad_cliente", ciudad);
		request.setAttribute("pais_cliente", pais);
		request.setAttribute("totalValvula", total_valvula);
		request.setAttribute("totalTurbo", total_turbo);
		request.setAttribute("totalKit", total_kit);
		request.setAttribute("totalRefri", total_refri);
		request.setAttribute("totalPlumillas", total_plumillas);
		request.setAttribute("totalNeto", total_neto);
		request.setAttribute("valorTotal", valor_total);

		request.setAttribute("nValvulas", cant_valvulas);

		request.setAttribute("nTurbo", cant_turbo);

		request.setAttribute("nKit", cant_kit);

		request.setAttribute("nRefri", cant_refri);

		request.setAttribute("nPlumillas", cant_plumillas);

		request.getRequestDispatcher("pagRespuesta.jsp").forward(request, response);

	}
}
