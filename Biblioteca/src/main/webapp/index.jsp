<%@page contentType="text/html" import="java.util.*, java.text.*" pageEncoding="ISO-8859-1"%>
<html>

<!-- CABE�ALHO -->

<head>
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<link href="[localhost:8080/calculadora_IMC]/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Biblioteca</title>
    <meta charset="UTF-8" />
</head>

<!-- CORPO -->
<body>
    <div class="container">
        <body style="background:#F8F8F8">
            <br>
            <!-- TITULO -->
			<div class="panel-heading" style="background:#337AB7"><center><b><font color="white"><font size="6">Biblioteca</font></font></b></center></div><br>
			
    	<form>
             <!-- EDITAR E LISTAR-->
            <div class="btn-group" role="group" aria-label="...">
 				<button type="button" class="btn btn-default">Editar</button>
  				<a href="listagem.jsp"><button type="button" class="btn btn-default">Listar</button></a>
			<div><br>
			
             <!-- CAMPO CÓDIGO -->
        	<div class="input-group" size="30">
  				<span class="input-group-addon" id="basic-addon1">Maricula</span>
  				<input type="text" class="form-control" placeholder="Digite o codigo do livro" aria-describedby="basic-addon1">
			</div><br>
			 <!-- CAMPO NOME -->
			<div class="input-group" size="30">
  				<span class="input-group-addon" id="basic-addon1">Nome</span>
  				<input type="text" class="form-control" placeholder="Digite o nome do livro" aria-describedby="basic-addon1">
			</div><br>

			<!-- /BOTAO PARA SALVAR  -->
			<button class="btn btn-primary">Salvar</button>
		</form>
<%		

%>
  </div>
</body>
</html>