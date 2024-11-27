<%-- 
    Document   : consultaReg
    Created on : 30 de out. de 2024, 21:25:47
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Hospede"%>
<%@page import="model.dao.HospedeDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Oxygen:wght@300;400;700&display=swap');
            body {
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                min-height: 100vh;
                width: 100%;
                padding: 20px;
                font-family: "Open Sans", sans-serif;
            }
            
        </style>
    </head>
    <body>
        <%
        
        String cpf = (request.getParameter("cpf"));
            

        Hospede hosp = new Hospede();
        hosp.setCpf(cpf);
        
        
        HospedeDAO hospDAO = new HospedeDAO();
        if(hospDAO.delHospCpf(hosp)){
            out.println("<br> <b>Hospede removido com sucesso!</b> <br>");
        }else{
            out.println("Hospede não removido!");
        }

        
        %>
    </body>
</html>
