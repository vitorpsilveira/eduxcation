<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<%@ include file="../base/header.jsp" %>
	
	<body>
		<%@ include file="../base/navbar.jsp" %>
		
		<div class="container">
			<br>

			<c:if test="${mensagemStatus != null}">
				<div class="green">
					<p>${mensagemStatus}</p>
				</div>
			</c:if>
		
			<div class="row">
				<div class="input-field col s3">
					<h5>Produtos</h5>
				</div>
				<f:form method="GET">
					<div class="input-field col s5">
						<input id="busca" name="busca" id="search" type="text" placeholder="Pesquisar por Descrição" value="${busca}" >
					</div>
					<div class="input-field col s1">
						<button class="btn-small" type="submit"><i class="material-icons">search</i></button>
					</div>
				</f:form>
				<div class="input-field col s3">
					<a class="btn-floating btn-large waves-effect waves-light red right" title="novo" href="${s:mvcUrl('novoProdutoUrl').build()}" >
						<i class="material-icons">add</i>
					</a>
				</div>
			</div>			
			
			<c:if test="${!listaPagina.isEmpty()}">
				<div class="row">
					<div class="responsive-table col s12">
						<table id="tabProdutos">
							<thead>
								<tr>
									<th>Id</th>
									<th>Descrição</th>
									<th>Custo Unitário</th>
									<th>Preço Venda</th>
									<th>Tipo Produto</th>
									<th>Estoque Atual</th>
									<th class="center-align">Ações</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listaPaginada.content}" var="registro" >
									<tr>
										<td>${registro.id}</td>
										<td>${registro.descricao}</td>
										<td><fmt:formatNumber value="${registro.custoUnitario}" type="currency"/></td>
										<td><fmt:formatNumber value="${registro.precoVenda}" type="currency"/></td>	
										<td>${registro.tipoProduto.displayValue}</td>		
										<td>${registro.saldoAtual}</td>												
										<td class="center-align" >
											<a class="btn-small green" title="alterar" href="${s:mvcUrl('alterarProdutoUrl').arg(0, registro.id).build()}"><i class="material-icons">edit</i></a>
											<a class="btn-small" title="detalhes"  href="${s:mvcUrl('detalharProdutoUrl').arg(0, registro.id).build()}"><i class="material-icons">more_horiz</i></a>
											<button class="btn-small red modal-excluir" title="excluir" type="button" data-target="modalExcluir" data-descr="${registro.descricao}"  >
												<i class="material-icons">delete</i>
												<f:form action="${s:mvcUrl('excluirProdutoUrl').arg(0, registro.id).build()}" method="post">
												</f:form>
											</button>
										</td>
									</tr>			
								</c:forEach>		
							</tbody>	
						</table>
					</div>
				</div>
				
				<%@ include file="../base/paginacao.jsp" %>	
	
			</c:if>
		</div>
		
		<%@ include file="../base/modalExcluir.jsp" %>
			
	</body>
	<%@ include file="../base/scripts.jsp" %>
</html>