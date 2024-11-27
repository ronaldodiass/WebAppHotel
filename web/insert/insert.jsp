<%-- 
    Document   : pesquisa
    Created on : 30 de out. de 2024, 19:42:37
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Hospede"%>
<%@page import="model.dao.HospedeDAO"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

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
        <h1>HOTEL</h1>
        <%
            //Entrada
            int quarto = Integer.parseInt( request.getParameter("quarto") );            
            String nome = request.getParameter("nome");            
            String tel = request.getParameter("tel") ;
            String cpf = request.getParameter("cpf");
            int convidados = Integer.parseInt( request.getParameter("convidados") );
            double adicionais = Double.parseDouble( request.getParameter("adicionais") );

            // Instância do objeto
            Hospede hosp = new Hospede();
            hosp.setQuarto(quarto);
            hosp.setNome(nome);
            hosp.setTel(tel);
            hosp.setCpf(cpf);
            hosp.setConvidados(convidados);
            hosp.setAdicionais(adicionais);          
            
            HospedeDAO hospDAO = new HospedeDAO();
            
            if (hospDAO.insHosp(hosp)){    // Insere e retorna o resultado (true / false).

                out.println("Hospede inserido com sucesso!");
            }else{

                out.println("Hospede Não inserido!");
            }          
        %>
    </body>
</html>
