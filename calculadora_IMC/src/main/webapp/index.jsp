<%@page contentType="text/html" import="java.util.*, java.text.*" pageEncoding="ISO-8859-1"%>
<html>

<!-- CABEÇALHO -->

<head>
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<link href="[localhost:8080/calculadora_IMC]/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Calculadora de IMC</title>
    <meta charset="UTF-8" />
</head>

<!-- CORPO -->
<body>
    <div class="container">
        <body style="background:#F8F8F8">
            <br>
            <!-- TITULO -->
            <h1>IMC</h1>
    	<form>
            <!-- CAMPO PESO -->
            <div class="input-group" style="width: 300px">
                <span class="input-group-addon" id="basic-addon1">Peso</span>
                <input type="text" name="peso" class="form-control" placeholder="Peso" aria-describedby="basic-addon1">
                <span class="input-group-addon" id="basic-addon1" style="background:#337AB7"><font color="white">kg</font></span>
            </div><br><!-- /CAMPO PESO -->
            <!-- CAMPO ALTURA-->
            <div class="input-group" style="width: 300px">
                <span class="input-group-addon" id="basic-addon1">Altura</span>
                <input type="text" name="altura" class="form-control" placeholder="Altura" aria-describedby="basic-addon1">
                <span class="input-group-addon" id="basic-addon1" style="background:#337AB7"><font color="white">m</font></span>
            </div><br><!-- CAMPO ALTURA-->
			<!-- SELETOR SEXO  -->
            <div class="input-group" style="width: 300px">
                <span class="input-group-addon" id="basic-addon1">Sexo</span>
                <select name="sexualidade" class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
     				<option value="1">Masculino</option>
     				<option value="2">Feminino</option>
  				</select>
            </div><br><!-- /SELETOR SEXO  -->
			<!-- /BOTÃO PARA CALCULAR  -->
			<span style="padding-left:210px"> <button id="resultado" onclick="calculaPeso()" class="btn btn-primary">Resultado</button> 
		</form>
<%		
	String peso1 = request.getParameter("peso");
	String altura2 = request.getParameter("altura");
	String  sexo3 = request.getParameter("sexualidade");
	
	if (peso1 != null && altura2 != null && sexo3 != null){
		double peso = Double.parseDouble(peso1);
		double altura = Double.parseDouble(altura2);
		int sexo = Integer.parseInt(sexo3);
	
		 double resultado = peso/(altura*altura);
		 
		 if (sexo == 1) {
				if (resultado < 20) {
						out.println("Abaixo do peso");
				} else if (resultado < 24.9) {
						out.println("Dentro do peso normal");
				} else if (resultado < 29.9) {
						out.println("Acima do peso: Obesidade leve");
				} else if (resultado < 41.9) {
						out.println("Acima do peso: Obesidade moderada");
				} else { 
						out.println("Acima do peso: Obesidade mórbida");
				}
			} else {
				if (resultado < 19) {
						out.println("Abaixo do peso");
				} else if (resultado < 23.9) {
						out.println("Dentro do peso normal");
				} else if (resultado < 29.9) {
						out.println("Acima do peso: Obesidade leve");
				} else if (resultado < 38.9) {
						out.println("Acima do peso: Obesidade moderada");
				} else { 
						out.println("Acima do peso: Obesidade mórbida");
				}
			}				
			      
	}
%>
  </div>
</body>
</html>