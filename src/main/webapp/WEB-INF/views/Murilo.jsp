<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="listaTelefonica">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Agenda Easy V0.1</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<style>
		.jumbotron{
			width: 400px;
			text-align: center;
			margin-top: 20px;
			margin-left: auto;
			margin-right: auto;
		}
		.table{
			margint-top: 20px;
		}
	</style>    
	<script src="js/angular/angular.js"></script>
	<script src="js/bootstrap/bootstrap.js"></script>
	<script>
		angular.module("listaTelefonica", []);
		angular.module("listaTelefonica").controller("listaTelefonicaCtrl", function ($scope){ 
				$scope.app = "Lista Telefonica";
				$scope.contatos = [
					{nome: "Paulo", telefone: "99998888"},
					{nome: "Ana Maria", telefone: "99998877"},
					{nome: "Maria", telefone: "99998866"}
				];
		});
	</script>
</head>
<body ng-controller="listaTelefonicaCtrl">

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target="#navbar-main">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"><img
				style="max-width: 100px; margin-top: -7px;" src="img/Empresa2.png"
				class="img-responsive"></a>
		</div>

		<div class="navbar-collapse collapse" id="navbar-main">
			<ul class="nav navbar-nav " style="margin-top: 3px;">
					<li><a href="#">Home</a></li>
					<li><a href="index">Agendamento</a></li>
					<li><a href="#">Fale Conosco</a></li>
			</ul>

			<div class="text-right">
					<button type="submit" class="btn btn-link">
						<span style="margin-top: 3px;"></span><a href="login">Sair</a>
					</button>
				</div>
		</div>
	</div>
	
	<br><br><br>

	<div class="jumbotron">
		<h3>{{app}}</h3>
		<table class="table table-striped">
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
			</tr>
			<tr ng-repeat="contato in contatos">
				<th>{{contato.nome}}</th>
				<th>{{contato.telefone}}</th>
			</tr>
		</table>
	</div>

</body>
</html>