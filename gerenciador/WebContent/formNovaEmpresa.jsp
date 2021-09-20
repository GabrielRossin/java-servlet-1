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

O GET é muito utilizado para acessar um recurso, uma informação, mas nunca para enviar dados como dados de um formulário, por exemplo, 
isso é responsabilidade do POST.
Outras diferenças são que a informação POST não será salva no histórico do usuário, e as informações confidenciais (como senha, por exemplo) 
enviadas no formulário não serão visíveis na barra de URL (usando GET, elas serão visíveis no histórico e na barra de URL).
Sendo assim, um não é mais seguro que o outro, pois são utilizados para funcionalidades diferentes.

-->
</html>
