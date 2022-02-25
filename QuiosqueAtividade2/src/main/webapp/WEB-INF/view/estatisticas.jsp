<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="us">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estatistíca</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/estatistica.css">
</head>
<body>
    <div class="principal">

        <header class="options">
          <a href="Cadastro"><nav>Novo Cadastro</nav></a>

          <a href="InformacoesUsuario"><nav>Informações do Usuário</nav></a> 

          <a href="#"  class="selecionado"><nav>Estatistíca</nav></a> 
        </header>

        <section class="content">

            <h2>Estatistícas</h2>

            <br>

                <div class="boxEstatisticas">

                    <div class="boxOnlyEst">
                        <h3>Clientes por gênero:</h3>

                        <table>

                          <tr>
                            <th>Masculino</th>
                            <th>Feminino</th>
                            <th>Outros</th>
                          </tr>
                          
                          <tr>
                            <td>5</td>
                            <td>5</td>
                            <td>5</td>
                          </tr>
                    
                        </table>

                    </div>

                    <div class="boxOnlyEst">
                        <h3>Clientes por dia da semana:</h3>

                        <table>

                            <tr>
                              <th>Domingo</th>
                              <th>Segunda-Feira</th>
                              <th>Terça-Feira</th>
                              <th>Quarta-Feira</th>
                              <th>Quinta-Feira</th>
                              <th>Sexta-Feira</th>
                              <th>Sábado</th>
                            </tr>

                            <tr>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                            </tr>
                    
                        </table>

                    </div>


                    <div class="boxOnlyEst">
                        <h3>Clientes por período do dia:</h3>

                        <table>

                            <tr>
                              <th>Manhã</th>
                              <th>Tarde</th>
                              <th>Noite</th>
                            </tr>
                            <tr>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                            </tr>
                    
                        </table>

                    </div>


                    <div class="boxOnlyEst">
                        <h3>Clientes separado faixa etária:</h3>

                        <table>

                            <tr>
                              <th>Jovem</th>
                              <th>Adulto</th>
                              <th>Idoso</th>
                            </tr>
                            <tr>
                              <td>5</td>
                              <td>5</td>
                              <td>5</td>
                            </tr>
                    
                        </table>

                    </div>

                </div>
            

        </section>
    
    </div>
    
</body>