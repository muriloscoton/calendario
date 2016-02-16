<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><!-- Importante para habilitar os recursos de Responsividade em conjunto com o CSS -->		
	<title>Agenda Easy V0.1</title>
		
   <link rel="stylesheet" type="text/css" href="css/calendario/jquery-frontier-cal-1.3.2.css" />
   <link rel="stylesheet" type="text/css" href="css/calendario/easy.css" />
   <link rel="stylesheet" type="text/css" href="css/calendario/colorpicker.css" />
   <link rel="stylesheet" type="text/css" href="css/calendario/jquery-ui-1.8.1.custom.css" />
   <link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
   
   <script type="text/javascript" src="js/calendario/jquery-1.4.2-ie-fix.min.js"></script>
   <script type="text/javascript" src="js/calendario/jquery-ui-1.8.1.custom.min.js"></script>
   <script type="text/javascript" src="js/calendario/jshashtable-2.1.js"></script>
   <script type="text/javascript" src="js/calendario/jquery.qtip-1.0.js"></script>
   <script type="text/javascript" src="js/calendario/colorpickerjs"></script>
   <script type="text/javascript" src="js/calendario/jquery-frontier-cal-1.3.2.min.js"></script>
   <script type="text/javascript" src="js/calendario/easy.js"></script>
    
    <style type="text/css">
			//label, input.text, select { display:block; }
			fieldset { padding:0; border:0; margin-top:25px; }
			.ui-dialog .ui-state-error { padding: .3em; }
			.validateTips { border: 1px solid transparent; padding: 0.3em; }
		</style>
    
</head>
<body background="img/login.jpg">

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
					<li><a href="#">Agendamento</a></li>
					<li><a href="Teste">Fale Conosco</a></li>
			</ul>

			<div class="text-right">
					<button type="submit" class="btn btn-link">
						<span style="margin-top: 3px;"></span><a href="login">Sair</a>
					</button>
				</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
	<br><br>
	<div id="toolbar" class="ui-widget-header ui-corner-all" style="padding:3px; vertical-align: middle; white-space:nowrap; overflow: hidden;">
			<div class="col-md-5">
				<button id="BtnPreviousMonth">Anterior</button>
			</div>
			<div class="col-md-5">
				&nbsp;&nbsp;&nbsp;
				Data: <input type="text" id="dateSelect" size="10" style="text-align: center;"/>
				
				&nbsp;&nbsp;&nbsp;
			</div>
			<div class="col-md-1">
				<button id="BtnNextMonth">Proximo</button>
			</div>
		</div>

		<br>

				<!--
		You can use pixel widths or percentages. Calendar will auto resize all sub elements.
		Height will be calculated by aspect ratio. Basically all day cells will be as tall
		as they are wide.
		-->
		<div id="mycal"></div>

		</div>

		
		<!-- Add event modal form -->
		
		<div id="add-event-form" title="Novo Agendamento">
			<p class="validateTips">Todos os campos são obrigatórios</p>
			<form>
			<fieldset>
				<label for="name">Nome</label>
				<input type="text" name="what" id="what" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;"/>
				<br>
				<table style="width:100%; padding:3px;">
					<tr>
						<td>
							<label>Data</label>
							<input type="text" name="startDate" id="startDate" value="" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: 3px;"/>				
						</td>
						<td>&nbsp;</td>
						<td>
							<label>Hora</label>
							<select id="startHour" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
								<option value="12" SELECTED>12</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>				
						</td>
						<td>
							<label>Minuto</label>
							<select id="startMin" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
								<option value="00" SELECTED>00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>
							</select>				
						</td>
					<td>
							<label>AM/PM</label>
							<select id="startMeridiem" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
								<option value="AM" SELECTED>AM</option>
								<option value="PM">PM</option>
							</select>				
					</td>
					</tr>
					<tr>
						<td>
							<label>Data</label>
							<input type="text" name="endDate" id="endDate" value="" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:90%; padding: .4em;"/>				
						</td>
						<td>&nbsp;</td>
						<td>
							<label>Hora Fim</label>
							<select id="endHour" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:90%; padding: .4em;">
								<option value="12" SELECTED>12</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>				
						</td>
						<td>
							<label>Minuto Fim</label>
							<select id="endMin" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:90%; padding: .4em;">
								<option value="00" SELECTED>00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>
							</select>				
						</td>
						<td>
							<label>AM/PM</label>
							<select id="endMeridiem" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:90%; padding: .4em;">
								<option value="AM" SELECTED>AM</option>
								<option value="PM">PM</option>
							</select>				
						</td>
					</tr>			
				</table>
			</fieldset>
			</form>
		</div>
		
		<div id="display-event-form" title="View Agenda Item">
			
		</div>		

		<p>&nbsp;</p>

	</div>
	
	</div>
	<br>
		<br>

	<div class="row">
		<div class="col-md-12">
			<div align="center">
				<hr>
				<p>Easy Imports System LTDA.</p>
			</div>
		</div>
	</div>
</body>
</html>
