<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/tpc4" user="asi" password="Asi@sutc*2021" />

<html>
    <head>
      
    </head>
    <body>

        <%

        java.util.Date data= new java.util.Date();

            int year= data.getYear()+1900;
            int month= data.getMonth()+1;
            int day= data.getDate();

            String data_hora= day + "/" + month + "/" + year;%>

            

       <sql:update   dataSource="${db}"> insert into compras values('${param.nome_agente}', '<%=data_hora%>', (${param.QtdClubmaster} + ${param.QtdCateye} + ${param.QtdButterfly}), ${param.Valor_total})</sql:update> 

       <sql:query   dataSource="${db}" var="result"> select count(nome_agente) nrvendas from compras where nome_agente like '%${param.nome_agente}%'</sql:query>

       <p>Obrigado! Acaba de comprar</p>
        <br>
        <c:set var="subtotal" value="20000"></c:set>
        <c:out value=" ${param.QtdCateye}" /> aviator , cada a <c:out value= "${param.p_unit1}*"/>   <br>   
        <c:out value=" ${param.QtdButterfly}" />  Butterfly , cada a <c:out value= "${param.p_unit2}"/><br>
        <c:out value=" ${param.QtdClubmaster}" />  Clubmaster , cada a <c:out value= "${param.p_unit3}"/><br> <br>

       
        Total  <c:out value= "${param.Valor_total}" /> MT  <br> <br>
		
		Agente de vendas ${param.nome_agente} ja fez <c:forEach var="row" items="${result.rows}"> <c:out value="${row.nrvendas}" /> </c:forEach>  vendas <br> 
		 

        <a href="index.html">Voltar a comprar mais itens</a> 
      




        

        
        
		
    </body>
</html>