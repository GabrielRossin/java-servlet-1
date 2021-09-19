<%-- <%
    //scriplet
	String nomeEmpresa = (String) request.getAttribute("empresa");
    System.out.println(nomeEmpresa);
%> --%>

<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>


<html><body>
<!--  Empresa <%-- <% out.println(nomeEmpresa); %> --%>" cadastrada com sucesso! -->
<!--  Empresa <%-- <%= nomeEmpresa  %> --%> cadastrada com sucesso! -->

		<c:if test= "${not empty empresa}">
            Empresa ${ empresa } cadastrada com sucesso!
        </c:if>

        <c:if test= "${empty empresa}">
            Nenhuma empresa cadastrada!
        </c:if>
		<%-- Empresa ${empresa } cadastrada com sucesso! --%>
	  
</body></html>