
<%

    String userName = (String) session.getAttribute("userName");

    String item_photo_url = request.getParameter("item_photo_url");
    String item_name = request.getParameter("item_name");
    String item_type = request.getParameter("item_type");
    String item_price = request.getParameter("item_price");
    String item_id = request.getParameter("item_id");
    boolean buy_button = Boolean.valueOf(request.getParameter("buy_button"));
%> 

<div class="card animate__animated animate__fadeInUp">
    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
         data-mdb-ripple-color="light">
        <img src="<%= item_photo_url%>"
             class="w-100" />
        <a href="#!">
            <div class="mask">
                <div class="d-flex justify-content-start align-items-end h-100">
                    <h5><span class="badge bg-dark ms-2">NEW</span></h5>
                </div>
            </div>
            <div class="hover-overlay">
                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
            </div>
        </a>
    </div>
    <div class="card-body">
        <a href="" class="text-reset">
            <h5 class="card-title mb-2"><%= item_name%></h5>
        </a>
        <a href="" class="text-reset ">
            <p>
                <%= item_type%>
            </p>
        </a>

        <h6 class="mb-3 price">
            <%= item_price%>$
        </h6>

    </div>
    <%if (userName != null & buy_button) {%>
    <a href="shipment?action=shipment.ship&id=<%=item_id%>" class="btn btn-primary" role="button">Buy now</a>
    <%}%>
</div>