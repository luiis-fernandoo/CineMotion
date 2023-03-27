<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.Cliente"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>CineMotion</title>
<link rel="icon" href="imagens/icon-Navbar.png">
<link rel="stylesheet" href="style.css">

</head>
<body class="forms">
	<div class="container">
			<form name="formCadastro" action="insertSessao" class="formulario">
				<div class="form-header">
					<div class="title">
						<h1>Compra Confirmada</h1>
					</div>
				</div>

				<div class="input-group">
					<div class="input-box">
						<label for="horario" >Horário</label>
						<input id="nome" type="text" name="horario" readonly value="<%out.print(request.getAttribute("horario")); %>"  >
					</div>
				
					<div class="input-box">
						<label for="num_sessao">Número Sessão</label>
						<input id="num_sessao" type="text" name="num_sessao" readonly value="<%out.print(request.getAttribute("num_sessao")); %>"  >
					</div>
	
				
					<div class="input-box">
						<label for="sala">Sala</label>
						<input id="sala" type="text" name="sala" readonly value="<%out.print(request.getAttribute("sala")); %>"  >
					</div>
					
					<div class="input-box">
						<label for="data_sessao">Data Sessão</label>
						<input id="data_sessao" type="text" name="data_sessao" readonly value="<%out.print(request.getAttribute("data_sessao")); %>"  >
					</div>
					
					<div class="input-box">
						<label for="tipoIngresso">Tipo Ingresso</label>
						<input id="tipoIngresso" type="text" name="tipoIngresso" readonly value="<%out.print(request.getAttribute("tipoIngresso")); %>"  >
					</div>
					
					<div class="input-box">
						<label for="preco">Valor Ingresso</label>
						<input id="preco" type="text" name="preco" readonly value="<%out.print(request.getAttribute("preco")); %>"  >
					</div>
					
					<div class="input-box">
						<label for="titulo">Filme em Sessão</label>
						<input id="titulo" type="text" name="titulo" readonly value="<%out.print(request.getAttribute("titulo")); %>"  >
					</div>
					
					<div class="input-box">
						<label for="nome">Nome Comprador</label>
						<input id="nome" type="text" name="nome" readonly value="<%out.print(request.getAttribute("nome")); %>" >
					</div>
					
					<div class="input-box">
						<label for="cpf">Cpf Comprador</label>
						<input id="cpg" type="text" name="cpf" readonly value="<%out.print(request.getAttribute("cpf")); %>" >
					</div>
					
					<div class="continue-button">
						<button>Imprimir Comprovante</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
</body>
</html>