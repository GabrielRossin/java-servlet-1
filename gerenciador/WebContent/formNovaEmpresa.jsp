<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${linkServletNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome" />
	    Data Abertura: <input type="text" name="data" />
		
		 <input type="submit"/>
	
	</form>

</body>

<!-- 

O GET � muito utilizado para acessar um recurso, uma informa��o, mas nunca para enviar dados como dados de um formul�rio, por exemplo, 
isso � responsabilidade do POST.
Outras diferen�as s�o que a informa��o POST n�o ser� salva no hist�rico do usu�rio, e as informa��es confidenciais (como senha, por exemplo) 
enviadas no formul�rio n�o ser�o vis�veis na barra de URL (usando GET, elas ser�o vis�veis no hist�rico e na barra de URL).
Sendo assim, um n�o � mais seguro que o outro, pois s�o utilizados para funcionalidades diferentes.

-->
</html>
