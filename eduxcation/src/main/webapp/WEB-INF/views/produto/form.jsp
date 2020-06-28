<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html lang="pt-br">
<%@ include file="../base/header.jsp"%>
<body>
	<%@ include file="../base/navbar.jsp"%>

	<div class="container">

		<f:form action="${s:mvcUrl('salvarProdutoUrl').build()}" method="post"
			modelAttribute="produto">
			<f:hidden path="id" />

			<div class="row">
				<div class="col s12">

					<div class="titulo-centralizado">
						<h2>Cadastrar Produto</h2>
						<p>Preencha todos os campos solicitados para registrar um
							produto</p>
					</div>

					<div class="row">
						<div class="input-field col s6">
							<label for="descricao">Descrição</label>
							<f:input path="descricao" cssClass="validate" />
							<f:errors path="descricao" cssClass="helper-text" />
						</div>
						<div class="input-field col s4">
							<label for="tipoProduto"></label>
							<f:select path="tipoProduto">
								<f:options items="${listaDeTipos}" itemLabel="displayValue" />
							</f:select>
							<f:errors path="tipoProduto" cssClass="helper-text" />
						</div>
					</div>

					<div class="row">
						<div class="input-field col s6">
							<label for="custoUnitario">Custo Unitário</label>
							<f:input path="custoUnitario" cssClass="validate" type="number"
								step="0.01" min="0" />
							<f:errors path="custoUnitario" cssClass="helper-text" />
						</div>
						<div class="input-field col s6">
							<label for="precoVenda">Preço de Venda</label>
							<f:input path="precoVenda" cssClass="validate" type="number"
								step="0.01" min="0" />
							<f:errors path="precoVenda" cssClass="helper-text" />
						</div>
					</div>

					<div class="row">
						<div class="input-field col s3">
							<label for="autor">Autor/Marca</label>
							<f:input path="autor" cssClass="validate" />
							<f:errors path="autor" cssClass="helper-text" />
						</div>
						<div class="input-field col s3">
							<label for="volume">Volume/Modelo</label>
							<f:input path="volume" cssClass="validate" />
							<f:errors path="volume" cssClass="helper-text" />
						</div>
						<div class="input-field col s3">
							<label for="editora">Editora/Fabricante</label>
							<f:input path="editora" cssClass="validate" />
							<f:errors path="editora" cssClass="helper-text" />
						</div>
						<div class="input-field col s3">
							<label for="ano">Ano</label>
							<f:input path="ano" cssClass="validate" />
							<f:errors path="ano" cssClass="helper-text" />
						</div>
					</div>

				</div>

				<div class="card-action">
					<input class="btn-small s6 red lighten-2" type="submit"
						value="Salvar"> <a
						href="${s:mvcUrl('listarProdutoUrl').build()}"
						class="btn-small orange">voltar</a>
				</div>


			</div>
		</f:form>
	</div>

	<%@ include file="../base/scripts.jsp"%>

	<script src="/js/fornecedor/form.js"></script>
</body>
</html>
