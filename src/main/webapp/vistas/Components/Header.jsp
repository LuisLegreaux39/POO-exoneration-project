<%-- 
    Document   : Header
    Created on : 5 may 2024, 12:35:45 p. m.
    Author     : PC
--%>

<!--        <div>
            <a href="controller?action=customer.list">Listar usuarios</a>
            <a href="controller?action=customer.add">Crear nuevo usuario</a>
            
        </div>-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white">
    <%if (session.getAttribute("userName") != null) {%>
    <h3 class="primary">Welcome <%=session.getAttribute("userName")%></h3>
    <%}%>
    <!-- Container wrapper -->
    <div class="container">    
        <!-- Toggle button -->
        <button
            class="navbar-toggler"
            type="button"
            data-mdb-toggle="collapse"
            data-mdb-target="#navbarSupportedContent1"
            aria-controls="navbarSupportedContent1"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">      
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" href="main">Home</a>
                </li>
                <li class="nav-item">
                    <a  class="nav-link" href="customer">User list</a>
                </li>

                <%if (session.getAttribute("userName") != null) {%>
                <li class="nav-item">
                    <a  class="nav-link" href="customer?action=customer.ship.list">My shiplist</a>
                </li>
                <%}%>

            </ul>
            <!-- Left links -->      
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->
        <div class="d-flex align-items-center">
            <!-- Icon -->
            <a class="nav-link me-3" href="#">
                <i class="fas fa-shopping-cart"></i>
                <span class="badge rounded-pill badge-notification bg-danger">1</span>
            </a>

            <%if (session.getAttribute("userName") == null) {%>
            <a class="nav-link me-3" href="authentication">
                <i class="fas fa-user"></i>
            </a>
            <%}%>


            <%if (session.getAttribute("userName") != null) {%>
            <a class="nav-link me-3" href="authentication?action=user.log.out">
                <i class="fas fa-user-times"></i>
            </a>
            <%}%>

            <a href="#" class="border rounded px-2 nav-link"
               target="_blank">
                <i class="fab fa-github me-2"></i>
                Contact the author
            </a>
        </div>
        <!-- Right elements -->

    </div>
    <!-- Container wrapper -->
</nav>