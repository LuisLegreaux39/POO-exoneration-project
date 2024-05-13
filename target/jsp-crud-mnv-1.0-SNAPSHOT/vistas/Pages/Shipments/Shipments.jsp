<%-- 
    Document   : ship
    Created on : 4 may 2024, 10:14:28 p. m.
    Author     : PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="../../Components/Links.jsp" />
    </head>
    <body >
        <section >
            <jsp:include page="../../Components/Header.jsp" />
        </section>
        
        <c:if test="${current_item != null}">
            
            <section style="margin-top: 70px;">
               
                <div class="container" >
                    <div class="card mb-3" >
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="${current_item.getPhoto()}" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">${current_item.getName()}</h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                    <form method="post" action="shipment?action=ship.item&itemId=${current_item.getId()}">
                                        <div data-mdb-input-init class="form-outline mb-4">
                                            <input type="number" id="amount" name="amount" class="form-control" placeholder="Amount"  value="1"/>
                                        </div> 
                                        <!-- Submit button -->
                                        <button type="submit" class="btn btn-primary btn-block mb-4">
                                            Check out item for ${current_item.getPrice()} $
                                        </button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </c:if>

        <section style="margin-bottom: 70px;">
            <div class="container ">
                <h5 class="card-title">Suggested items...</h5>
                <jsp:include page="../../Components/Item-suggestion.jsp" />
            </div>
        </section>
    </body>
    <section>
        <jsp:include page="../../Components/Footer.jsp" />
    </section>
</html>
