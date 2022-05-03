<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="color: white; background-color:  rgb(39, 34, 33); font-family: 'Courier New', Courier, monospace;">
<header>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(36, 24, 22);">
  <a class="navbar-brand" href="#" style="color: rgb(173, 169, 169)">Principal</a>
   <a class="nav-link" href="login.jsp" style="color: white">Login</a>
</nav>
</header>
<main>
<div class="container" style="margin-top: 110px; text-align: right;">
<div style="margin-right: 30%">
<form>
<label>CPF: <input type="text" name="cpf" value="<%= request.getAttribute("cpf")==null?"":request.getAttribute("cpf")%>"></label><br>
<label>Senha: <input type="text" name="senha" value="<%= request.getAttribute("senha")==null?"":request.getAttribute("senha")%>"></label><br>
<p><%= request.getAttribute("mensagem")==null?"":request.getAttribute("mensagem")%></p>
<input type="submit" formaction="SvFuncionarioLocalizar" formmethod="get" value="Login"/>
</div>
<br><br>
<input type="submit" formaction="SvFuncionarioExcluir" formmethod="get" value="Excluir DB"/>
<input type="submit" formaction="SvFuncionarioCadastrar" formmethod="get" value="Abrir conexão/criar tabelas/DB"/>
</form>
</div>
</main>
<footer>
<hr style="margin-top: 185px;">
<p style="color:  rgb(173, 169, 169); font-size: 12px; margin-left: 20px;">fictício, apenas para exercitar java web</p>
<hr>
</footer>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>