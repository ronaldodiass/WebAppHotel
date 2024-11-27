<%-- 
    Document   : consultaReg
    Created on : 30 de out. de 2024, 21:25:47
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Hospede"%>
<%@page import="model.dao.HospedeDAO"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar (Consulta)</title>
        <link href="../style/styleReg.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
        //Entrada/Receber
        String cpf = ( request.getParameter("cpf") );
            
        // Instância e atrib de valor
        Hospede hosp = new Hospede();
        hosp.setCpf(cpf);
        
         //Select
        HospedeDAO hospDAO = new HospedeDAO();
        if(hospDAO.consHospRegCpf(hosp) != null){
                out.println("<h2>Hóspedes</h2> <br>");
        %>                          
        <form name="frmPesq" method="post" action="updateHosp.jsp">
            Quarto: <input type="number" name="quarto" value="<%= hosp.getQuarto() %>"> <p>
            Nome: <input type="text" name="nome" value="<%= hosp.getNome() %>" minlength="3" maxlength="25"> <p>
            CPF: <input type="text" name="cpf" value="<%= hosp.getCpf()%>" readonly="true"> <p>
            Telefone: <input type="text" name="tel" value="<%= hosp.getTel()%>"> <p>                
            Convidados: <input type="number" name="convidados" value="<%= hosp.getConvidados()%>" max="3"> <p>                
            Adicionais: <input type="text" name="adicionais" value="<%= hosp.getAdicionais()%>"> <p>                            
            <input type="submit" value="Salvar">
        </form>                 
        <%                                
        }else{
               out.println("Hospede não encontrado!");
        }        
        %>
    </body>
</html>
