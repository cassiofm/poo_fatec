<%-- 
    Document   : americana
    Created on : 11 de set de 2020, 12:41:53
    Author     : cassio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cálculo de Amortização Tabela Americana</h1>
        
        <form>
            <label for="emprestimo">Empréstimo:</label><br>
            <input type="number" id="emprestimo" name="emprestimo"><br><br>
            <label for="meses">Número de meses:</label><br>
            <input type="number" id="meses" name="meses"><br><br>
            <label for="juros">Taxa de Juros:</label><br>
            <input type="number" id="juros" name="juros"><br><br>
            <select id="periodo" name="periodo"><br>
                <option value="mensal">Mensal</option>
                <option value="anual">Anual</option>
            </select>
            <br><br>
            <input type="submit" value="Submit"> 
            
            
            
        </form>
    </body>
</html>
