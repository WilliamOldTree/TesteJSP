<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Primeira p�gina JSP</h1>

<!-- Codigo Java parte 1 da atividade-->
<%! boolean formatar = true; %>
<%!
	String today(){
	java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat ("yyyy-mm-dd hh:mm:ss");
	return dt.format(new java.util.Date());
	}
%>

<h1>A data de hoje �: <%= new java.util.Date() %> </h1>
<h1>A data de hoje �: <%= today() %> </h1>
<h1>A data de hoje �: <% if (formatar){
						out.println(today());
						}else{
						out.println(new java.util.Date());	
						}
					  %></h1>

<!-- Codigo Java parte 2 da ativdade -->					  
<%! 
	double num1 = 2;
	double num2 = 3;
	double resultado;
%>					  

<%!
	void divisaoExata(double num1, double num2){
	resultado = num2 / num1;
	}
%>
					  
<%
if (num2 % num1 == 0){
	out.println(" A divisao de "+num2+ "/"+num1+ " � uma divis�o exata");		
	}else{
	out.println(" A divisao de "+num2+ "/"+num1+ " n�o � uma divis�o exata");	
	}
%>

<!-- Parte 3 da atividade -->


</body>
</html>