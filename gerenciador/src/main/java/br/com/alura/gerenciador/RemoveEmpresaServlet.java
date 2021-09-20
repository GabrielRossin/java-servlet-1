package br.com.alura.gerenciador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/removeEmpresa")
public class RemoveEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String parameter = request.getParameter("id");
			Integer id = Integer.valueOf(parameter);
			
			System.out.println(id);
			
			Banco banco = new Banco();
			banco.removeEmpresa(id);
			
			response.sendRedirect("listaEmpresas");
			
	}

}