<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="pt-br">
<%@ include file="base/header.jsp"%>
<body>
	<%@ include file="base/navbar.jsp"%>

	<section class="livros-para-venda">
		<div class="container center">
			<h2>Temos os melhores livros para seus estudos</h2>
			<p>
				Confira abaixo todos os livros que nÃ³s temos disponÃ­veis sendo
				eles livros fÃ­sicos e livros vituais os famosos <strong>EBOOK'S</strong>
			</p>
			<div class="div-card">
				<div class="prod">
					<a href=""><img class="imagem-card"
						src="img/livros-use-a-cabeca-javascript.jpeg"
						alt="livros-use-a-cabeca-javascript"></a>
					<p>O livro use a cabeÃ§a com javascript irÃ¡ fazer vocÃª pensar
						fora da caixa</p>
					<button class="waves-effect waves-light btn red lighten-2">Comprar</button>
				</div>
				<div class="prod">
					<a href=""><img class="imagem-card"
						src="img/livros-use-a-cabeca-javascript.jpeg"
						alt="livros-use-a-cabeca-javascript"></a>
					<p>O livro use a cabeÃ§a com javascript irÃ¡ fazer vocÃª pensar
						fora da caixa</p>
					<button class="waves-effect waves-light btn red lighten-2">Comprar</button>
				</div>
				<div class="prod">
					<a href=""><img class="imagem-card"
						src="img/livros-use-a-cabeca-javascript.jpeg"
						alt="livros-use-a-cabeca-javascript"></a>
					<p>O livro use a cabeÃ§a com javascript irÃ¡ fazer vocÃª pensar
						fora da caixa</p>
					<button class="waves-effect waves-light btn red lighten-2">Comprar</button>
				</div>
				<div class="prod">
					<a href=""><img class="imagem-card"
						src="img/livros-use-a-cabeca-javascript.jpeg"
						alt="livros-use-a-cabeca-javascript"></a>
					<p>O livro use a cabeÃ§a com javascript irÃ¡ fazer vocÃª pensar
						fora da caixa</p>
					<button class="waves-effect waves-light btn red lighten-2">Comprar</button>
				</div>
				<div class="prod">
					<a href=""><img class="imagem-card"
						src="img/livros-use-a-cabeca-javascript.jpeg"
						alt="livros-use-a-cabeca-javascript"></a>
					<p>O livro use a cabeÃ§a com javascript irÃ¡ fazer vocÃª pensar
						fora da caixa</p>
					<button class="waves-effect waves-light btn red lighten-2">Comprar</button>
				</div>
				<div class="prod">
					<a href=""><img class="imagem-card"
						src="img/livros-use-a-cabeca-javascript.jpeg"
						alt="livros-use-a-cabeca-javascript"></a>
					<p>O livro use a cabeÃ§a com javascript irÃ¡ fazer vocÃª pensar
						fora da caixa</p>
					<button class="waves-effect waves-light btn red lighten-2">Comprar</button>
				</div>
			</div>
		</div>
	</section>

	<div class="btn-topo-pagina">
		<a id='scrollToTop' href='#' class="red-text"><i
			class="medium material-icons">arrow_upward</i></a>
	</div>

	<%@ include file="base/footer.jsp"%>

	<%@ include file="base/scripts.jsp"%>
</body>
</html>