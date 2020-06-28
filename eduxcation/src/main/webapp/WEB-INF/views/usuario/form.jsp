<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<%@ include file="../base/header.jsp"%>
<body>
	<%@ include file="../base/navbar.jsp"%>

	<div class="container">
		<br>

		<f:form id="formUsuario"
			action="${s:mvcUrl('salvarUsuarioUrl').build()}" method="post"
			modelAttribute="usuarioForm">
			<f:hidden path="usuario.id" />
			<f:hidden path="inclusao" />

			<div class="row">
				<div class="col s12">
					<div class="titulo-centralizado">
						<h2>
							<span class="card-title center-align">Dados do Usuário</span>
						</h2>
					</div>
					<div class="row">
						<div class="input-field col s7">
							<label for="usuario.nomeCompleto">Nome</label>
							<f:input path="usuario.nomeCompleto" cssClass="validate" />
							<f:errors path="usuario.nomeCompleto" cssClass="helper-text" />
						</div>
						<div class="input-field col s3">
							<label for="usuario.cpf">CPF</label>
							<f:input path="usuario.cpf" cssClass="validate fmt-cpf"
								maxlength="11" />
							<f:errors path="usuario.cpf" cssClass="helper-text" />
						</div>
					</div>
					<div class="row">
						<div class="input-field col s4">
							<label for="usuario.username">Login</label>
							<f:input path="usuario.username" cssClass="validate" />
							<f:errors path="usuario.username" cssClass="helper-text" />
						</div>
						<c:if test="${usuarioForm.inclusao}">
							<div class="input-field col s4">
								<label for="usuario.password">Senha</label>
								<f:input path="usuario.password" cssClass="validate"
									type="password" />
								<f:errors path="usuario.password" cssClass="helper-text" />
							</div>
						</c:if>
					</div>
					<div class="row">
						<div class="input-field col s2">
							<label for="usuario.dataNascimento">Nascimento</label>
							<f:input path="usuario.dataNascimento"
								cssClass="validate datepicker" placeholder="." />
							<f:errors path="usuario.dataNascimento" cssClass="helper-text" />
						</div>
						
						<div class="input-field col s6">
							<label for="usuario.email">Email</label>
							<f:input path="usuario.email" cssClass="validate" />
							<f:errors path="usuario.email" cssClass="helper-text" />
						</div>
					</div>

					<div class="row">
						<div class="input-field col s2">
							<label for="cep">CEP</label>
							<f:input path="usuario.endereco.cep" cssClass="validate fmt-cep" />
							<f:errors path="usuario.endereco.cep" cssClass="helper-text" />
						</div>
						<div class="input-field col s6">
							<label for="endereco">Endereço</label>
							<f:input path="usuario.endereco.endereco" cssClass="validate" />
							<f:errors path="usuario.endereco.endereco" cssClass="helper-text" />
						</div>
						<div class="input-field col s2">
							<label for="complemento">Complemento</label>
							<f:input path="usuario.endereco.complemento" cssClass="validate" />
							<f:errors path="usuario.endereco.complemento"
								cssClass="helper-text" />
						</div>
						<div class="input-field col s1">
							<label for="numero">Número</label>
							<f:input path="usuario.endereco.numero" cssClass="validate" />
							<f:errors path="usuario.endereco.numero" cssClass="helper-text" />
						</div>
					</div>

					<div class="row">
						<div class="input-field col s2">
							<label for="bairro">Bairro</label>
							<f:input path="usuario.endereco.bairro" cssClass="validate" />
							<f:errors path="usuario.endereco.bairro" cssClass="helper-text" />
						</div>
						<div class="input-field col s6">
							<label for="municipio">Município</label>
							<f:input path="usuario.endereco.municipio" cssClass="validate" />
							<f:errors path="usuario.endereco.municipio"
								cssClass="helper-text" />
						</div>
						<div class="input-field col s1">
							<label for="uf">UF</label>
							<f:input path="usuario.endereco.uf" cssClass="validate" />
							<f:errors path="usuario.endereco.uf" cssClass="helper-text" />
						</div>
					</div>

					<div class="row">
						
					</div>

					<span class="card-title center-align">Perfis de Acesso</span>
					<div class="row">
						<div class="input-field col s8">
							<select name="" id="perfilSel">
								<c:forEach items="${listaDePerfis}" var="perfil">
									<option value="${perfil.authority}">${perfil.descricao}</option>
								</c:forEach>
							</select> <label for="perfil">Perfil</label>
						</div>
						<div class="input-field col s4">
							<button type="button" class="btn-small" id="btnAddPerfil">adicionar</button>
						</div>
					</div>
					<div class="row">
						<div class="col s12">
							<table class="responsive-table" id="tablePerfis">
								<thead>
									<tr>
										<th>Nome</th>
										<th>Descrição</th>
										<th class="center-align">Ações</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${usuarioForm.listaPerfil}" var="perfil"
										varStatus="status">
										<tr>
											<f:hidden path="listaPerfil[${status.index}].authority" />
											<f:hidden path="listaPerfil[${status.index}].descricao" />
											<td>${perfil.authority}</td>
											<td>${perfil.descricao}</td>
											<td class='center-align'><button
													class='btn-small red btnDeletePerfil' title='excluir'
													type='button'>
													<i class='material-icons'>delete</i>
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="card-action">
					<input class="btn-small s6 red lighten-2" type="submit" value="Salvar">
					<a href="${s:mvcUrl('listarUsuarioUrl').build()}"
						class="btn-small orange">voltar</a>

				</div>
			</div>

		</f:form>
	</div>
	<%@ include file="../base/scripts.jsp"%>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							$("#btnAddPerfil")
									.click(
											function() {
												var count = $("#tablePerfis tbody tr").length;
												var table = $("#tablePerfis tbody");
												var cHtml = "";

												cHtml += "<tr>";
												cHtml += "	<input type='hidden' id='listaPerfil["
														+ count
														+ "].authority' name='listaPerfil["
														+ count
														+ "].authority' value='"
														+ $("#perfilSel").val()
														+ "' />";
												cHtml += "	<input type='hidden' id='listaPerfil["
														+ count
														+ "].descricao' name='listaPerfil["
														+ count
														+ "].descricao' value='"
														+ $(
																"#perfilSel option:selected")
																.text()
														+ "' />";
												cHtml += "	<td>"
														+ $("#perfilSel").val()
														+ "</td>";
												cHtml += "	<td>"
														+ $(
																"#perfilSel option:selected")
																.text()
														+ "</td>";
												cHtml += "	<td class='center-align'><button class='btn-small red btnDeletePerfil' title='excluir' type='button'><i class='material-icons'>delete</i></button></td>";
												cHtml += "</tr>";
												table.append(cHtml);
											});

							$("#tablePerfis tbody").on("click",
									"button.btnDeletePerfil", function(botao) {
										$(this).closest("tr").remove();
									});
						});
	</script>

	<%@ include file="../base/scripts.jsp"%>

	<script src="/js/endereco/form.js"></script>
</body>
</html>
