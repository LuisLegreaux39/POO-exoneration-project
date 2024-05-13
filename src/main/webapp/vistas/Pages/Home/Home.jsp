<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String item_shipment = (String) request.getAttribute("item_shipment");
    
%>
<!DOCTYPE html>
<html>
    <style>
        body{
            background-color: #f4f4f4 !important;
        }
    </style>
    <head>
        <title>Super dooper ecommerce</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../../Components/Links.jsp" />
    </head>
    <body>
        <section>
            <jsp:include page="../../Components/Header.jsp" />
        </section>
        <jsp:include page="../../Components/Carousel.jsp" />

        <div class="container mt-4">
            <c:if test="${item_shipment != null}">
                <div class="alert alert-dismissible alert-warning ">
                    <h4 class="alert-heading">Congratulations for buying!</h4>
                    <p class="mb-0">
                        Thanks for your purchase
                    </p>
                </div> 
            </c:if>
            <jsp:include page="./Items-cards.jsp" />
        </div>
    </body>
    <jsp:include page="../../Components/Footer.jsp" />
</html>
