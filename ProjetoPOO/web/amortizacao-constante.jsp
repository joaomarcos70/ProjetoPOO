<%-- 
    Document   : amortizacao-constante
    Created on : 15/03/2019, 00:42:37
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
                
    <center><div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title h5body">Amortização Constante</h1>
                    <p class="card-text pbody">Digite os dados solicitados a baixo para o cálculo da amortização pelo Modelo Constante.</p>
                    <form>
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
    </body>
</html>
