<%-- 
    Document   : myships
    Created on : 6 may 2024, 8:02:30 a. m.
    Author     : PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="rtb.jsp.crud.mnv.model.Item"%>
<%@page import="rtb.jsp.crud.mnv.dao.ShipmentsDao"%>
<%@page import="java.util.List"%>
<style>
    .card {
        box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
    }
    .footer-cta {
        box-shadow: rgba(0, 0, 0, 0.15) 0px 5px 15px;
    }
    .price {
        color: #263238;
        font-size: 24px;
    }

    .card-title {
        color:#263238
    }
</style>


<div class="container text-center" >
    <%if (session.getAttribute("userId") == null) {%>
    <script> window.location = `${window.location.origin}${window.location.pathname}?action=home`;</script>
    <% } else {%>
    <div class="row">
        <c:forEach items="${customer_shipments}" var="customer_shipment">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card animate__animated animate__fadeInUp">
                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                         data-mdb-ripple-color="light">
                        <img src="${customer_shipment.getPhoto()}"
                             class="w-100" />
                        <a href="#!">
                            <div class="hover-overlay">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                            </div>
                        </a>
                    </div>
                    <div class="card-body">
                        <a href="" class="text-reset">
                            <h5 class="card-title mb-2">${customer_shipment.getName()}</h5>
                        </a>
                        <a href="" class="text-reset ">
                            <p>
                                ${customer_shipment.getType()}
                            </p>
                        </a>
                        <h6 class="mb-3 price">
                            ${customer_shipment.getPrice()}$
                        </h6>
                    </div>
                </div>
            </div>

        </c:forEach>
    </div>
    <% }%>
</div>