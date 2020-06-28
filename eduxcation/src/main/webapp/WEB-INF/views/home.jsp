<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="pt-br">
<%@ include file="base/header.jsp"%>
<body>
	<%@ include file="base/navbar.jsp"%>

	<main class="main">
		<div class="container">
			<h1 class="titulo-principal">Eduxcation</h1>
			<p class="paragrafo-main">Somos uma empresa que visa o melhor
				aprendizado do aluno</p>
			<a class="waves-effect waves-light btn-large red lighten-2"
				href="#sobre">sobre nós</a>
		</div>
	</main>


	<div class="container services">
		<div class="section">

			<!-- Icon Section -->
			<div class="row">
				<div class="col s12 m4">
					<div class="icon-block">
						<h2 class="center black-text">
							<i class="material-icons large">build</i>
						</h2>
						<h5 class="center">Facil acesso as ferramentas</h5>
						<p class="light">Com a nossa plataforma damos facil acesso as
							ferramentas necessárias para você prosseguir com os seus estudos
							e chegar o mais rapido possível ao sucesso</p>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="icon-block">
						<h2 class="center black-text">
							<i class="material-icons large">book</i>
						</h2>
						<h5 class="center">Te damos acesso aos livros</h5>
						<p class="light">Temos livros ebooks e livros físicos para
							aqueles que preferem a famosa moda antiga, e para aquelas pessoas
							mais atualiazadas e preferem os livros ebooks</p>
					</div>
				</div>

				<div class="col s12 m4">
					<div class="icon-block">
						<h2 class="center black-text">
							<i class="material-icons large">computer</i>
						</h2>
						<h5 class="center">Acesso facil</h5>
						<p class="light">Carregue a nossa plataforma no bolso, hoje
							com o celular levamos um mundo no bolso, e com a nossa plataforma
							não seria diferente, voce pode acessar a nossa plataforma tambem
							pelo desktop</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="sobre-nos scrollspy" id="sobre">
		<div class="container">
			<h2 id="titulo-sobre">Sobre nós</h2>
			<p>Nosso país vive numa crise na educação que perdura por anos,
				alunos são aprovados sem ter o devido conhecimento, pensando nisso,
				o site visa promover a venda delivros didáticos, sendo eles físicos
				ou virtuais (E-book) e materiaiscomo placa de computadores para
				estudo em mecatrônica e variáveis . O nosso site veio para auxiliar
				o ensino do aluno, para que ele seja preparado para o mercado de
				trabalho, que atualmente está muito concorrido.</p>
		</div>
	</section>
	<div>
		<div class="carousel carousel-slider">
			<a class="carousel-item" href="#one!"><img
				src="img/background-main.jpg"></a> <a class="carousel-item"
				href="#two!"><img src="img/background-main.jpg"></a> <a
				class="carousel-item" href="#three!"><img
				src="img/background-main.jpg"></a>
		</div>
	</div>

	<section class="contato">
		<div class="container">
			<div class="elemento-pai row">
				<div class="endereco col s6">
					<h3 style="margin-top: 0;">Onde estamos</h3>
					<p>
						Rua Cel. Fernando Prestes, 326 <br> 09020-110 – Santo
						André/SP
					</p>
					<h3>Telefone</h3>
					<p>4122-9400</p>
					<p>98217-3322</p>
				</div>
				<div class="mapa col s6">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.402681466192!2d-46.531737485020265!3d-23.66155338463321!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce42890b351799%3A0xf6c6bd0c74d31545!2sR.%20Cel.%20Fernando%20Prestes%2C%20326%20-%20Centro%2C%20Santo%20Andr%C3%A9%20-%20SP%2C%2009020-110!5e0!3m2!1spt-BR!2sbr!4v1587330236175!5m2!1spt-BR!2sbr"
						width="100%" height="300" frameborder="0" style="border: 0;"
						allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				</div>
			</div>
		</div>
	</section>

	<div class="form">
		<div class="container">
			<h2>Nos mande uma mensagem</h2>
			<form>
				<label for="nome">nome</label> <input type="text" name="nome"
					id="nome"> <label for="email">email</label> <input
					type="email" name="email" id="email"> <label for="mensagem">Mensagem</label>
				<textarea class="materialize-textarea" name="" id="" cols="30"
					rows="10"></textarea>
				<button class="waves-effect waves-light btn red lighten-2"
					type="submit">enviar</button>
			</form>
		</div>
	</div>

	<div class="btn-topo-pagina">
		<a id='scrollToTop' class="red-text" href='#'><i
			class="medium material-icons">arrow_upward</i></a>
	</div>

	<%@ include file="base/footer.jsp"%>

	<%@ include file="base/scripts.jsp"%>
</body>
</html>