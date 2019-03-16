<%-- 
    Document   : amortizacao-americana
    Created on : 15/03/2019, 00:42:18
    Author     : finha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <!-- Formulario -->  

    <!-- Grid markup Bootstrap -->
        <center><div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title h5body">Amortização Americana</h5>
                    <p class="card-text pbody">Digite os dados solicitados a baixo para o cálculo da amortização pelo Modelo Americano.</p>
                    <form action="amortizacao-americana.jsp">
                        <table>
                            <tr><td><input class="form-control" type="text" name="capital" placeholder="Informe o Capital"></td></tr>
                            <tr><td><input class="form-control" type="text" name="taxa" placeholder="Informe a Taxa"></td></tr>
                            <tr><td><input class="form-control" type="text" name="periodo" placeholder="Periodo (em meses)"></td></tr>
                        </table>
                        <br><input class="bttbody btn btn-primary" type="submit" name="enviar" value="Calcular!">
                        </form>
                </div>
            </div>
        </div></center>
    
     <% try { %>
        <% int periodo = Integer.parseInt(request.getParameter("periodo"));
        double txjuros = (Float.parseFloat(request.getParameter("taxa")) / 100);
        double capital = Float.parseFloat(request.getParameter("capital" ));
        double juros = capital * txjuros;
        double saldo = capital;
        double amortizacao = capital;
        double pmt = juros;
        double amortizacaoAc = amortizacao, jurosAc = juros * periodo, pmtAc = (juros + capital) + (jurosAc - juros);
        
        int i = 0;
        
        %>
        
        <br><center>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title h5body">Amortização Calculada</h5>
                    <p class="card-text pbody">Informações do calculo realizado</p>
                    <p class="card-text pbody">Empréstimo inicial de R$: <%= String.format("%.2f", capital) %></p>
                    <p class="card-text pbody">Com uma taxa de juros de <%= String.format("%.0f", txjuros * 100) %>% ao mês</p>
            
                <% if (txjuros == 1)  {%><p class="card-text pbody">Informações do calculo realizado</p>
                <%} else {%> <p class="card-text pbody">em um período de <%= periodo %> meses</p> <% } %>
        
        <center><div><button class="btn btn-primary btn-lg btn-block bttbody" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Expandir Parcela(s)</button></div></center>
        <div class="collapse" id="collapseExample">
        <div class="card card-body">
        
        <div class="container"><center><table class="table"> 
            <thead class=\"thead-dark\"><tr>
            <th scope="col"><center>Período</center></th><th scope="col"><center>Saldo Devedor (R$)</center></th><th scope="col"><center>Amortização (R$)</center></th><th scope="col"><center>Juros (R$)</center></th><th scope="col"><center>Prestação (R$)</center></th>
            </tr></thead>
            
            <% for (i=0; i < periodo; i++){ %>
                <% if (i < 1) {%>
                <tr>
                <tbody><td><b><%= i %></b></td><td><%= String.format("%.2f", saldo) %></td><td>---</td><td>---</td><td>---</td></tbody>
                </tr>
                <% } else { %>
                
                <tbody><tr><td><b><%= i %></b></td><td><%= String.format("%.2f", saldo) %></td><td>---</td><td><%= String.format("%.2f", juros) %></td><td><%= String.format("%.2f", pmt) %></td></tr></tbody>
                <% }}  %>
             
                <tbody><tr><td><b><%= i+1 %></b></td><td><%= String.format("%.2f", saldo-saldo) %></td><td><%= String.format("%.2f", capital) %></td><td><%= String.format("%.2f", juros) %></td><td><%= String.format("%.2f", capital+juros) %></td></tr></tbody>
                
                <tbody><tr><td><b>Total</b></td><td>---</td><td><%= String.format("%.2f", amortizacaoAc) %></td><td><%= String.format("%.2f", jurosAc) %></td><td><%= String.format("%.2f", pmtAc) %></td></tr></tbody>
                
        </table></center><div class="container">
        
        </div>
        </div>

        <% }catch(Exception ex) { %> 

        <div class="container divOne"><center><h5><p class="text-danger">ATENÇÃO</h5></p>
                <p class="text-danger">Por favor, usar o ponto ao informar a quantidade da taxa</p>
                <p class="text-danger">Use números inteiros ao informar a quantidade de parcelas</p>
                <p class="text-danger">Obrigado</p></center>
          
          <% } %>
            </div>
            </div>
            </div></center>
    
    
    </body>
</html>
