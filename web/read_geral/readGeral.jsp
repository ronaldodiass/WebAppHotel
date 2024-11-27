<%-- 
    Document   : consultaLista
    Created on : 30 de out. de 2024, 21:45:24
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Hospede"%>
<%@page import="model.dao.HospedeDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

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
                font-size: 18px;
                
            }
            
        </style>
    </head>
    <body>
        <%                  
        
            //Select "Lista"

            HospedeDAO pesqDAO = new HospedeDAO();
            
            List<Hospede> lista = new ArrayList<>();
            lista = pesqDAO.consHospLista();
            
            int n_reg = 0 ;
            out.println("<br> <b><h1>HOTEL - Hóspedes</h1></b>");
            
            for( int i = 0; i <= lista.size()-1; i++){                           
                out.println("<br> Nome: " + lista.get(i).getNome());
                out.println("<br> Quarto: " + lista.get(i).getQuarto());
                out.println("<br> Telefone: " + lista.get(i).getTel());
                out.println("<br> CPF: " + lista.get(i).getCpf());
                out.println("<br> Convidados: " + lista.get(i).getConvidados());
                out.println("<br> Adicionais: " + lista.get(i).getAdicionais());
                out.println("</br>");
                n_reg++;                           
            }
            out.println("<br><br> <b>Hóspedes: </b>" + n_reg + "<br>");

        
        %>
    </body>
</html>
