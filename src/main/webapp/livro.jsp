<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar livro</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="color: white; background-color:  rgb(39, 34, 33); font-family: 'Courier New', Courier, monospace;">
<header>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(36, 24, 22);">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="index.html" style="color: rgb(173, 169, 169)">Principal</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link" href="livro.html" style="color: white">Cadastrar livro</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cliente.html" style="color: rgb(173, 169, 169)">Cadastrar cliente</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="funcionario.html" style="color: rgb(173, 169, 169)">Cadastrar funcionário</a>
      </li>
    </ul>
  </div>
</nav>
</header>
<main>
<div class="container" style="margin-top: 100px; text-align: right; width: 500px;">
<%= request.getAttribute("mensagemErro")==null?"":request.getAttribute("mensagemErro") %>
 <h5>Insira as informações do livro</h5><hr><br>
<form action="SvLivroCadastrar" method="post">
<label>Nome: <input type="text" name="nomeLivro" value="<%= request.getParameter("nomeLivro")==null?"":request.getParameter("nomeLivro")%>"></label><br>
<label>Autor: <input type="text" name="autor" value="<%= request.getParameter("autor")==null?"":request.getParameter("autor")%>"></label><br>
<label>Número de páginas: <input type="text" name="numeroPaginas" value="<%= request.getParameter("numeroPaginas")==null?"":request.getParameter("numeroPaginas")%>"></label><br>
<label>Editora: <input type="text" name="editora" value="<%= request.getParameter("editora")==null?"":request.getParameter("editora")%>"></label><br>
<label>Preço: <input type="text" name="preco" value="<%= request.getParameter("preco")==null?"":request.getParameter("preco")%>"></label><br>
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