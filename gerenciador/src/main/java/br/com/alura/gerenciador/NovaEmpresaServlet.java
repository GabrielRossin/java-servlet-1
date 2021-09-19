package br.com.alura.gerenciador;

import java.io.IOException;

import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet { 
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//O método doPost só é capaz de lidar com requisições do tipo post.
    	
    	System.out.println("Cadastrando nova empresa");
    	
    	String nome_empresa = request.getParameter("nome");
    	Empresa empresa = new Empresa();
    	empresa.setNome(nome_empresa);
    	
    	Banco banco = new Banco();
    	banco.adiciona(empresa);
    	
        PrintWriter out = response.getWriter();
        
        
        //chamando o jsp
        RequestDispatcher rd = request.getRequestDispatcher("/novaEmpresaCriada.jsp");
        request.setAttribute("empresa", empresa.getNome());
        rd.forward(request, response);
        
    }
}
