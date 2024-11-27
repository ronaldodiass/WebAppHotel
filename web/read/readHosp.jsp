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
        <title>Hotel</title>
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
                font-size: 18px;
            }
            
            h1 {
                font-size: 30px;
            }
            
        </style>
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
                out.println("<h1><br> <b>Hóspede</b> <br></h1>");
                out.println("<br> Quarto: " + hosp.getQuarto());
                out.println("<br> Nome: " + hosp.getNome());
                out.println("<br> Telefone: " + hosp.getTel());
                out.println("<br> CPF: " + hosp.getCpf());
                out.println("<br> Convidados: " + hosp.getConvidados());
                out.println("<br> Adicionais: " + hosp.getAdicionais());                                                    
        }else{
               out.println("Hospede não encontrado!");
        }

        
        %>
    </body>
</html>
