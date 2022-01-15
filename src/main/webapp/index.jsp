<%@page import="java.util.Calendar"%>
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
<h1>Primeira página JSP</h1>

<!-- Codigo Java parte 1 da atividade-->
<%! boolean formatar = true; %>
<%!
	String today(){
	java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat ("yyyy-mm-dd hh:mm:ss");
	return dt.format(new java.util.Date());
	}
%>

<h1>A data de hoje é: <%= new java.util.Date() %> </h1>
<h1>A data de hoje é: <%= today() %> </h1>
<h1>A data de hoje é: <% if (formatar){
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
					  
<h1> <%
	if (num2 % num1 == 0){
		out.println(" A divisao de "+num2+ "/"+num1+ " é uma divisão exata");		
		}else{
		out.println(" A divisao de "+num2+ "/"+num1+ " não é uma divisão exata");	
		}
%> </h1>



<!-- Parte 3 da atividade -->


 <%! Calendar cal = Calendar.getInstance(); %> 
 
 <%! Integer segundos(){
 	
 	return cal.get(Calendar.SECOND); 
 }
 %>
 
 
 <h1> <%
 	if (segundos()%2 == 0){
 		out.println(" Segundo par");
 	}else{
 		out.println(" Segundo impar");
 	}
 %> </h1>

 
<h1> <%=
	segundos() 	
 %> </h1>


</body>

</html>