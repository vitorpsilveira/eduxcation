<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
	<%@ include file="../base/header.jsp" %>

<body>
	<%@ include file="../base/navbar.jsp" %>
	<div class="container">
		<div>
			<h4>Dados do Produto</h4>
		</div>
		<div>
			<ul>
				<li>Id: ${produto.id}</li>
				<li>Descrição: ${produto.descricao}</li>
				<li>Tipo Produto: ${produto.tipoProduto}</li>
				<li>Autor/Marca: ${produto.autor}</li>
				<li>Volume/Modelo: ${produto.volume}</li>
				<li>Editora/Fabricante: ${produto.editora}</li>
				<li>Ano: ${produto.ano}</li>
				<li>Estoque Atual: ${produto.saldoAtual}</li>
			</ul>
		</div>
		<div>
			<a class="btn btn-warning" href="${s:mvcUrl('listarProdutoUrl').build()}">voltar</a>
		</div>
	</div>
	<%@ include file="../base/scripts.jsp" %>
</body>
</html>