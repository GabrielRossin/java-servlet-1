package br.com.alura.gerenciador;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



//oi
@WebServlet(urlPatterns = "/oi")
public class HelloWord extends HttpServlet 
{
	public HelloWord() 
	{
		
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("oi mundo, parabens vc escreveu o primeiro servlets.");
        out.println("</body>");
        out.println("</html>");
        
        System.out.println("o servlet OiMundoServlet foi chamado");
		
	}

}
