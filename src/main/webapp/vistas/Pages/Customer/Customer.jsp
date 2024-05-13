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
        <section class="pt-5 pb-5"  style="background-color: #eee;">
            <jsp:include page="./CustomersList.jsp" />
        </section>
    </body>
    <jsp:include page="../../Components/Footer.jsp" />
</html>
