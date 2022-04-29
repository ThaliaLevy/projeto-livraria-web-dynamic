<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cliente</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="color: white; background-color: rgb(39, 34, 33); font-family: 'Courier New', Courier, monospace;">
<header>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(36, 24, 22);">
  <a class="navbar-brand" href="#" style="color: rgb(173, 169, 169)">Principal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="livro.jsp" style="color: rgb(173, 169, 169)">Livro</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cliente.jsp" style="color: white">Cliente</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="funcionario.jsp" style="color: rgb(173, 169, 169)">Funcionário</a>
      </li>
    </ul>
  </div>
</nav>
</header>
<main>
<div class="container" style="margin-top: 100px; text-align: right; width: 500px;"> 
<div style="margin-right:25%">
<%= request.getAttribute("mensagem")==null?"":request.getAttribute("mensagem") %>
<br><br>
<h5>Informações do cliente</h5><hr>
<form>
<input type="hidden" name="id" value="<%= request.getParameter("id")==null?"":request.getParameter("id")%>"><br>
<label>Nome: <input type="text" name="nomeCliente" value="<%= request.getParameter("nomeCliente")==null?"":request.getParameter("nomeCliente")%>"></label><br>
<label>Idade: <input type="text" name="idade" value="<%= request.getParameter("idade")==null?"":request.getParameter("idade")%>"></label><br>
<label>Sexo: <input type="text" name="sexo" value="<%= request.getParameter("sexo")==null?"":request.getParameter("sexo")%>"></label><br>
<label>Senha: <input type="text" name="senha" value="<%= request.getParameter("senha")==null?"":request.getParameter("senha")%>"></label><br>
<label>CPF: <input type="text" name="cpf" value="<%= request.getParameter("cpf")==null?"":request.getParameter("cpf")%>"></label><br>
<br><br>
</div>
<input type="submit" formaction="SvClienteExcluir" formmethod="get" value="Excluir"/>
<!-- 
<input type="submit" formaction="SvClienteLocalizar" formmethod="get" value="Localizar"/>
<input type="submit" formaction="SvClienteCadastrar" formmethod="get" value="Cadastrar"/>
<input type="submit" formaction="SvClienteAlterar" formmethod="get" value="Alterar"/>   -->
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