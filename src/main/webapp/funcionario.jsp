<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Funcionario</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="color: white; background-color:  rgb(39, 34, 33); font-family: 'Courier New', Courier, monospace;">
<header>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(36, 24, 22);">
  <a class="navbar-brand" href="menuPrincipal.jsp" style="color: rgb(173, 169, 169)">Principal</a>
   <a class="nav-link" href="funcionario.jsp" style="color: rgb(173, 169, 169)">Cliente</a>
   <a class="nav-link" href="funcionario.jsp" style="color: white">Funcionário</a>
   <a class="nav-link" href="funcionario.jsp" style="color: rgb(173, 169, 169)">Livro</a>
</nav>
</header>
<main>
<div class="container" style="margin-top: 90px; text-align: right; width: 500px;">
<h5>Dados do funcionário</h5><hr><br>
<form>
<input type="hidden" name="tela" value="funcionario">
<label>Nome: <input type="text" name="nomeFuncionario" value="<%= request.getAttribute("nomeFuncionario")==null?"":request.getAttribute("nomeFuncionario")%>"></label><br>
<label>Idade: <input type="text" name="idade" value="<%= request.getAttribute("idade")==null?"":request.getAttribute("idade")%>"></label><br>
<label>Salário: <input type="text" name="salario" value="<%= request.getAttribute("salario")==null?"":request.getAttribute("salario")%>"></label><br>
<label>Sexo: <input type="text" name="sexo" value="<%= request.getAttribute("sexo")==null?"":request.getAttribute("sexo")%>"></label><br>
<label>Senha: <input type="text" name="senha" value="<%= request.getAttribute("senha")==null?"":request.getAttribute("senha")%>"></label><br>
<label>CPF: <input type="text" name="cpf" value="<%= request.getAttribute("cpf")==null?"":request.getAttribute("cpf")%>"></label><br>
<label>Matrícula: <input type="text" name="matricula" value="<%= request.getAttribute("matricula")==null?"":request.getAttribute("matricula")%>"></label><br>
<br><br>
<div style="margin-right: -20%">
<input type="submit" formaction="SvFuncionarioLocalizar" formmethod="get" value="Localizar"/>
<input type="submit" formaction="SvFuncionarioCadastrar" formmethod="get" value="Cadastrar"/>
<input type="submit" formaction="SvFuncionarioExcluir" formmethod="get" value="Excluir"/>
<input type="submit" formaction="SvFuncionarioAlterar" formmethod="get" value="Alterar"/>
<br><br>
<%= request.getAttribute("mensagem")==null?"":request.getAttribute("mensagem") %>
</div>
</form>
</div>
</main>
<footer>
<hr style="margin-top: 34px;">
<p style="color:  rgb(173, 169, 169); font-size: 12px; margin-left: 20px;">fictício, apenas para exercitar java web</p>
<hr>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>