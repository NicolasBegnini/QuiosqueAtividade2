<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/base.css">
    <title>Cadastrar-se</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="principal">
      
        <header class="options">
          <a href="#" class="selecionado"><nav>Novo Cadastro</nav></a>

          <a href="InformacoesUsuario"><nav>Informações do Usuário</nav></a> 

          <a href="Estatisticas"><nav>Estatistíca</nav></a> 
        </header>

        <section class="content">

          <h2>Faça seu Cadastro</h2>
          
          <form action="cadastrar" method="post">
            <div class="form-row" >

              <div class="form-group col-md-6">
                <label for="inputName4">Nome:</label>
                <input type="text" class="form-control" id="inputName4" name="nome" value="${quiosque.nome}" placeholder="Insira seu nome">
              </div>

              <br>

              <div class="form-group col-md-6">
                <label for="inputEmail4">E-mail:</label>
                <input type="email" class="form-control" name="email" id="inputEmail4" value="${quiosque.email}" placeholder="Insira o e-mail">
              </div>
            </div>

            <br>
            
            
            <label for="inputGender4">Genêro:</label>
            <div class="form-check">
			  <input class="form-check-input" type="radio" name="genero" id="Masc" value="Masculino" checked>
			  <label class="form-check-label" for="Masc">
			    Masculino
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="genero" id="Fem" value="Feminino">
			  <label class="form-check-label" for="Fem">
			    Feminino
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="genero" id="Outro" value="Outros">
			  <label class="form-check-label" for="Outro">
			    Outros
			  </label>
			</div>
            
            <br>

            <div class="form-group col-md-7">
              <label for="inputAddress">Endereço:</label>
              <input type="text" class="form-control" name="endereco" id="inputAddress" value="${quiosque.endereco}" placeholder="Rua dos Bobos, nº 0">
            </div>

            <br>

            <div class="form-row">
              <div class="form-group col-md-4">
                <label>Telefone ou Celular:</label>
                <input type="text" class="form-control" name="cel" placeholder="Insira o número do seu telefone ou celular" id="celular" value="${quiosque.cel}" name="celular" >
              </div>

              <br>

              <div class="form-group col-md-4">
                <label>Produtos de Interesse</label>
                <br>
                <select name="prodInteresse" id="Interesse">
                  <option value="camisas">Camisas Estampadas</option>
                  <option value="calcas">Calças Estampadas</option>
                  
                </select>
              </div>
              
              <br>
              <div id="date-picker-example" class="md-form md-outline input-with-post-icon datepicker col-md-4" inline="true">
              	<label>Data de nascimento:</label>
  				<input placeholder="Select date" name="dataNasc" type="date" id="example" class="form-control">
  				<i class="fas fa-calendar input-prefix"></i>
			  </div>

            </div>

            <br>
            
            <button type="submit" class="btn btn-primary">Cadastrar-se</button>
          </form>
        </section>
    </div>
</body>
</html>