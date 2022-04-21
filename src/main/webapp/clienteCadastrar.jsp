<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar cliente</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="color: white; background-color: rgb(39, 34, 33); font-family: 'Courier New', Courier, monospace;">
<header>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(36, 24, 22);">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="index.html" style="color: rgb(173, 169, 169)">Principal</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="livro.jsp" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: rgb(173, 169, 169)">
          Livro
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Cadastrar</a>
          <a class="dropdown-item" href="#">Pesquisar</a>
          <a class="dropdown-item" href="#">Excluir</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="cliente.jsp" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
          Cliente
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="clienteCadastrar.jsp">Cadastrar</a>
          <a class="dropdown-item" href="clientePesquisar.jsp">Pesquisar</a>
          <a class="dropdown-item" href="cliente.jsp">Excluir</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="funcionario.jsp" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: rgb(173, 169, 169)">
          Funcionário
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Cadastrar</a>
          <a class="dropdown-item" href="#">Pesquisar</a>
          <a class="dropdown-item" href="#">Excluir</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
</header>
<main>
<div class="container" style="margin-top: 100px; text-align: right; width: 500px;"> 
<%= request.getAttribute("mensagemErro")==null?"":request.getAttribute("mensagemErro") %>
<h5>Insira as informações do cliente</h5><hr><br>
<form action="SvClienteCadastrar" method="post">
<label>Nome: <input type="text" name="nomeCliente" value="<%= request.getParameter("nomeCliente")==null?"":request.getParameter("nomeCliente")%>"></label><br>
<label>Idade: <input type="text" name="idade" value="<%= request.getParameter("idade")==null?"":request.getParameter("idade")%>"></label><br>
<label>Sexo: <input type="text" name="sexo" value="<%= request.getParameter("sexo")==null?"":request.getParameter("sexo")%>"></label><br>
<label>Senha: <input type="text" name="senha" value="<%= request.getParameter("senha")==null?"":request.getParameter("senha")%>"></label><br>
<label>CPF: <input type="text" name="cpf" value="<%= request.getParameter("cpf")==null?"":request.getParameter("cpf")%>"></label><br>
<input type="submit" value="Cadastrar"/>
</form>
 </div>
</main>
<footer>
<hr style="margin-top: 100px;">
<p style="color:  rgb(173, 169, 169); font-size: 12px; margin-left: 20px;">fictício, apenas para exercitar java web</p>
<hr>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>