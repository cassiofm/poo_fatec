<%-- 
    Document   : agenda
    Created on : 25 de set de 2020, 16:18:29
    Author     : cassio
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Pacote.Contato"%>

<%
   ArrayList<Contato> userList = (ArrayList) application.getAttribute("userList"); 
    if(userList == null){
        userList = new ArrayList();
        userList.add(new Contato("Fatec Praia Grande", "fatecpg@fatec.sp.gov.br", "(13) (13) 3591-1303"));

        application.setAttribute("userList", userList);
    }
    if(request.getParameter("add") !=null){
        
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        userList.add(new Contato(nome, email, telefone));
        response.sendRedirect(request.getRequestURI());
    }   
    if(request.getParameter("remove") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        userList.remove(i);
        response.sendRedirect(request.getRequestURI());
        
    }
   
    %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda POO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</head>
<body>

<div class="jumbotron text-center">
    <body>
        <h1>Agenda - manutenção de contatos</h1>
        <br/><br/>
        
        <form>
            Nome: <input type="text" name="nome"/>
            email: <input type="text" name="email"/>
            Telefone: <input type="text" name="telefone"/>
                      <input type="submit" name="add" value="Adicionar"/>
        </form>
        <div class="container">
  <br/><br/><br/>
             
  <table class="table table-dark table-striped">
    <thead>
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Remover</th>
            </tr>
    </thead>
    <tbody>
            <% for(int i=0; i<userList.size();i++){%>
                <% Contato user = userList.get(i);%>
                <tr>
                    <td><%= i %></td>
                    <td><%= user.getNome() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getTelefone()%></td>
                    <td>
                <form>
                    <input type="submit" name="remove" value="Remover" />
                    <input type="hidden" name="i" value="<%= i %>" />
                </form> 
                    </td>
                </tr>
           <% } %>
    </tbody>
        </table>
    <br/>
    <hr/>
    <br/>
    <h3><a href="index.jsp">Voltar</a></h3>
</div>
    </body>
</html>
