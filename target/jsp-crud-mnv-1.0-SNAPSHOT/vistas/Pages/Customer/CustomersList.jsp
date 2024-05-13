<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container py-5 h-100">
    <div class="container"><h2 class="mb-5 animate__animated animate__fadeInDown">Available users</h2></div>
    <div class="row d-flex justify-content-center align-items-center h-100">
        <c:if test="${customer_list != null}">
            <c:forEach items="${customer_list}" var="customer_record">
                <div class="col-lg-3 col-md-6 mb-4">
                    <jsp:include page="../../Components/CustomerCard.jsp">
                        <jsp:param name="customer_name" value="${customer_record.getName()}"/>
                    </jsp:include>
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>