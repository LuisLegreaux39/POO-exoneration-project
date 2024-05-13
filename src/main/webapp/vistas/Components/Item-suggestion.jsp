<%-- 
    Document   : Item-suggestion
    Created on : 5 may 2024, 6:20:19 p. m.
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

<!-- Products -->

<section class="mt-5">
    <div class="text-center">
        <c:if test="${item_suggestions != null}">
            <div class="row">
                <c:forEach items="${item_suggestions}" var="item_record">
                    <div class="col-lg-3 col-md-6 mb-4">
                        <jsp:include page="./ItemCard.jsp">
                            <jsp:param name="item_photo_url" value="${item_record.getPhoto()}"/>
                            <jsp:param name="item_name" value="${item_record.getName()}"/>
                            <jsp:param name="item_type" value="${item_record.getType()}"/>
                            <jsp:param name="item_id" value="${item_record.getId()}"/>
                            <jsp:param name="item_price"  value="${item_record.getPrice()}"/>
                            <jsp:param name="buy_button"  value="true"/>
                        </jsp:include>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </div>
</section>
