<%-- 
    Document   : listar
    Created on : 4 may 2024, 10:13:16 p. m.
    Author     : PC
--%>
<%@page import="java.util.Iterator"%>
<%@page import="rtb.jsp.crud.mnv.model.Customer"%>
<%@page import="rtb.jsp.crud.mnv.dao.CustomerDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="../../Components/Links.jsp" />
    </head>
    <body>

        <section>
            <jsp:include page="../../Components/Header.jsp" />
        </section>
        <section style="margin-bottom: 100px; margin-top: 100px;">
            <%if (session.getAttribute("current-user-report") != null) {%>
            <div class="alert alert-primary" role="alert" >
                Repor generated at : <%= session.getAttribute("current-user-report")%>
            </div>    
            <% }%>

            <div class="container">
                <div class="row mt-5 mb-5">
                    <div class="col-6">
                        <h2 >My ship list</h2>
                    </div>
                    <div  class="col-6">
                        <div class="float-right">
                            <a href="customer?action=generate-report" class="btn btn-primary" role="button">Get single user report</a>
                            <a href="customer?action=generate-users-report" class="btn btn-primary" role="button">Get all users report</a>
                        </div>
                    </div>
                </div>

            </div>
            <jsp:include page="../../Components/Customer-ship-list.jsp" />
        </section>
        <section style="margin-bottom: 70px;">
            <div class="container ">
                <h5 class="card-title">Suggested items...</h5>
                <jsp:include page="../../Components/Item-suggestion.jsp" />
            </div>
        </section>
    </body>
    <jsp:include page="../../Components/Footer.jsp" />
</html>
