$(document).ready(function(){
	
	$("input[name$='cep']").change(function(){
		var cepInformado = $("input[name$='cep']").val().replace();
		
		console.log("Cep capturado " + cepInformado);
		
		$.ajax({
			type: "GET",
			url: "http://viacep.com.br/ws/" + cepInformado +"/json/",
			dataType: "jsonp",
			contentType: "application/json; charset=utf-8",
			success: function (retorno) {
				if (retorno != null) {
					
					if (retorno.erro) {
						alert("CEP não localizado");	
					} else {
						//Se foi tudo bem atribui os valores
						$("input[name$='endereco']").val(retorno.logradouro);
						$("input[name$='complemento']").val(retorno.complemento);
						$("input[name$='bairro']").val(retorno.bairro);
						$("input[name$='municipio']").val(retorno.localidade);
						$("input[name$='uf']").val(retorno.uf);
						M.updateTextFields();
					}
				}
			},
			error: function() {
				alert("CEP fora do formato");		
			}
		});				
	});			
});	
