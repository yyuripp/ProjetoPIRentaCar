<%-- 
    Document   : cadastrarContrato
    Created on : 11/04/2015, 12:08:23
    Author     : pc
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Contrato</title>
    </head>
    <body>
        <form action="ValorReserva" id="contrato" method="POST">
            <input type="hidden" name="userLogado" value="${CPFlogado}">
            <fieldset>
                <legend>Reserva</legend>
                <table>
                    <tr><td>Data Retirada </td><td><input type="text" readonly="readonly" title="Não é possível alterar" name="dtRetirada" value="<fmt:formatDate value="${ret}" pattern="dd/MM/yyyy"/>"></td>
                        <td>Data Devolução </td><td><input type="text" readonly="readonly" title="Não é possível alterar" name="dtDevolucao" value="<fmt:formatDate value="${dev}" pattern="dd/MM/yyyy"/>"></td></tr>
                    <tr><td>Loja </td><td><select name="filial">
                                <c:choose>
                                    <c:when test="${filial == 0}">
                                        <option selected value="0">São Paulo</option>
                                    </c:when>
                                    <c:when test="${filial == 1}">
                                        <option selected value="1">Rio de Janeiro</option>
                                    </c:when>
                                    <c:when test="${filial == 2}">
                                        <option selected value="2">Porto Alegre</option>
                                    </c:when>
                                    <c:when test="${filial == 3}">
                                        <option selected value="3">Belo Horizonte</option>
                                    </c:when>
                                </c:choose>
                            </select></td></tr>            
                    <tr><td>Diárias </td><td><input readonly="readonly" type="text" name="diarias" value="${diarias}"></td></tr>
                    <tr><td><a href="Contrato_1.jsp">Editar</a></td></tr>
                
                </table>
            </fieldset>
            <fieldset>
                <legend>Disponibilidade</legend>
                <table>
                <tr>
                    <td>Veiculo </td>
                    <td>
                            <c:forEach items="${veic}" var="veic" varStatus="stat">
                    <tr><td><input type="radio" name="veiculo" value="${veic.idVeiculo}"><c:out value="${veic.categoria}"/> | <c:out value="${veic.marca}"/> | <c:out value="${veic.nomeVeiculo}"/> | R$<c:out value="${veic.valorCategoria}"/></td></tr>
                            </c:forEach>
                        <p><c:out value="${veicSemDisp}"/></p>
                    </td>
                </tr>

                
                <tr><td><button type="submit" name="btGravarContrato">Avançar</button></td></tr>
                </table>
            </fieldset>

            <fieldset>
                <legend>Cliente</legend>
                <h4>Dados do Cliente</h4>
            </fieldset>
        </form>
        
        <h2>2</h2>
    </body>
</html>
