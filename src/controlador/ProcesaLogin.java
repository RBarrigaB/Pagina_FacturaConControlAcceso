package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import informacionLogin.Usuario;

@WebServlet("/ProcesaLogin")
public class ProcesaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user, pass;
		
		user = request.getParameter("usuario");
		pass = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
		if(user.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("clave1")){
	
				
				Usuario infoUsuario= new Usuario(user,pass);
				
				HttpSession inicio_sesion = request.getSession(true);
				inicio_sesion.setAttribute("usuario1", infoUsuario);
				RequestDispatcher prueba = request.getRequestDispatcher("ingresoValores.jsp");
				prueba.forward(request, response);
				// request.getServletContext().getRequestDispatcher("ingresoValores.jsp").forward(request, response); 
		}
		else {
			 
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Usuario o password incorrecto');");
			out.println("location='/generador-factura/formularioLogin.jsp';");
			out.println("</script>");
		}

	}

}
