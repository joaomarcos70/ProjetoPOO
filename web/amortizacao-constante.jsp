
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>amortização constante</title>
    </head>
    <body>
        <h1>Calculo de amortização constante</h1>
       
    </body>
    
    <form method="get">
        
    <h3>Insira o valor do saldo devedor do periodo anterior</h3>
    <input type="text" name ="saldoant"
    <br>
        
    <h3>Insira o valor do saldo devedor</h3>
    <input type="text" name ="saldod"
    <br>
    
    <h3>Insira a quantidade de parcelas</h3>
    <input type="text" name ="parcelas"
    <br>
    
    <h3>Insira o valor da taxa de juros</h3>
    <input type="text" name ="taxajuros"
    <br>
    
    <input type="submit" name ="gerar" value="gerar"
    <br>
</form>
    
    
    
     <% if (request.getParameter("gerar") != null) {
             try{
                 int parcelas = Integer.parseInt(request.getParameter("parcelas"));
                 int saldod = Integer.parseInt(request.getParameter("saldod"));
                 int gerar = Integer.parseInt(request.getParameter("gerar"));
                 int taxajuros = Integer.parseInt(request.getParameter("taxajuros"));
                 int saldoant = Integer.parseInt(request.getParameter("saldoant"));
                 
    int amort = saldod / parcelas ;
    int juros = saldoant * taxajuros;
    int prestacao = amort + juros;
    
    for(int i =0; int i <= prestacao){
        
        
    }
    
                 
        }catch(exception ex){
                
                }
                
    }
%>
</html>
