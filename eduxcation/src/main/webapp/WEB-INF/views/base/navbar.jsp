<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<nav>
	<div class="container">
		<div class="nav-wrapper">
			<a href="${s:mvcUrl('homeUrl').build()}" class="brand-logo"><img
				class="imagem-logo" src="/img/logo2.png" alt="logo-eduxcation"></a>
			<a href="#" data-target="mobile-navbar" class="sidenav-trigger">
				<i class="material-icons">menu</i>
			</a>

			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a href="${s:mvcUrl('homeUrl').build()}">Home</a></li>
				<li><a href="${s:mvcUrl('livrosUrl').build()}">Livros</a></li>
				<li><a href="${s:mvcUrl('materiaisUrl').build()}">Materiais</a></li>

				<!--DropDown-->
				<li><a class='dropdown-trigger' href='cadastrarUsuario'
					data-target='dropdown1'>Administrar<i
						class="material-icons right">arrow_drop_down</i></a></li>
				<!--DropDown-->

				<sec:authorize access="!isAuthenticated()">
					<li><a href="${s:mvcUrl('loginUrl').build()}"
						class="btn red lighten-2">Logar</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a href="${pageContext.request.contextPath}/logout"
						class="btn red lighten-2">Sair</a></li>
				</sec:authorize>
			</ul>

			<!--DropDown-->
			<ul id='dropdown1' class='dropdown-content'>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="usuarioPrincipal" />
					<li><a href="${s:mvcUrl('perfilUsuarioUrl').build()}"> <c:choose>
								<c:when test="${usuarioPrincipal.caminhoFoto != null}">
									<img class="img-perfil"
										src="${pageContext.request.contextPath}/${usuarioPrincipal.caminhoFoto}" />
								</c:when>
							</c:choose> ${usuarioPrincipal.nomeCompleto}
					</a></li>

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="${s:mvcUrl('listarPerfilUrl').build()}">Perfis
								de Acesso</a></li>
					</sec:authorize>
					<li role="separator" class="divider"></li>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="${s:mvcUrl('listarUsuarioUrl').build()}">Cadastro
							de Usuario</a></li>
				</sec:authorize>
				<li><a href="${s:mvcUrl('listarFornecedorUrl').build()}">Cadastro
						de fornecedor</a></li>
				<li><a href="${s:mvcUrl('listarProdutoUrl').build()}">Cadastro
						de produto</a></li>
				<li class="divider"></li>
				<li><a href="${s:mvcUrl('listarPedidoCompraUrl').build()}">Pedido
						de compra</a></li>
				<li><a href="${s:mvcUrl('listarRecebimentoUrl').build()}">Recebimento</a></li>
			</ul>
			<!--DropDown-->
		</div>
	</div>
</nav>

<ul id="mobile-navbar" class="sidenav">
	<li><a href="${s:mvcUrl('homeUrl').build()}">Home</a></li>
	<li><a href="${s:mvcUrl('livrosUrl').build()}">Livros</a></li>
	<li><a href="${s:mvcUrl('materiaisUrl').build()}">Materiais</a></li>
	<li class="divider"></li>
	<li><a href="${s:mvcUrl('listarUsuarioUrl').build()}">Cadastro
			de Usuario</a></li>
	<li><a href="${s:mvcUrl('listarFornecedorUrl').build()}">Cadastro
			de fornecedor</a></li>
	<li><a href="${s:mvcUrl('listarProdutoUrl').build()}">Cadastro
			de produto</a></li>
	<li class="divider"></li>
	<li><a href="${s:mvcUrl('listarPedidoCompraUrl').build()}">Pedido
			de compra</a></li>
	<li><a href="${s:mvcUrl('listarRecebimentoUrl').build()}">Recebimento</a></li>
	<li class="divider"></li>
	<sec:authorize access="!isAuthenticated()">
		<li><a href="${s:mvcUrl('loginUrl').build()}"
			class="btn red lighten-2">Logar</a></li>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<li><a href="${pageContext.request.contextPath}/logout"
			class="btn red lighten-2">Sair</a></li>
	</sec:authorize>
</ul>