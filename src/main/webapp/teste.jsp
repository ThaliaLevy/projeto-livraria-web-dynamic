<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
aqui  <%= request.getParameter("nomeCliente") %>;<br>
<label>Idade: <input type="text" name="idade" value="<%= request.getParameter("idade")==null?"":request.getParameter("idade")%>"></label><br>
</body>
</html>