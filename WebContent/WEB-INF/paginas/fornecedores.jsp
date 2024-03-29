<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Fornecedores</title>
</head>
<body>

	<form method="post" action="fornecedorServlet">
		<input type="hidden" name="codigo" value="${fornecedor.codigo}"/>
		C�digo <input type="text" disabled name="codigo" value="${fornecedor.codigo}"/> <br>
		Nome Fantasia <input type="text" name="nome" value="${fornecedor.nome}"/> <br>
		Razao Social <input type="text" name="razaoSocial" value="${fornecedor.razaoSocial}"/> <br>
		Cnpj <input type="text" name="cnpj" value="${fornecedor.cnpj}"/> <br>
		Email <input type="text" name="email" value="${fornecedor.email}"/> <br>
		<input type="submit" value="Enviar"/>
	</form>

	<font color="red"><h2>${mensagem}</h2></font>
	<h4>
	<h3>Registro de Fornecedores:</h3>
	<table border="1">
		<tr>
			<th>Codigo</th>
			<th>Nome Fantasia</th>
			<th>Razao Social</th>
			<th>Cnpj</th>
			<th>Email</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="f" items="${fornecedores}">
		<tr>
			<td>${f.codigo}</td>
			<td>${f.nome}</td>
			<td>${f.razaoSocial}</td>
			<td>${f.cnpj}</td>
			<td>${f.email}</td>
			<td><a href="fornecedorServlet?acao=editar&codigo=${f.codigo}">Editar</a></td>
			<td><a href="fornecedorServlet?acao=excluir&codigo=${f.codigo}">Excluir</a></td>
		</tr>
		</c:forEach>
	</table>
	</h4>
	
</body>
</html>