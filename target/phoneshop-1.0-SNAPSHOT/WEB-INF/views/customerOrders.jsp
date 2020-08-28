<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br><br><br><br>
            <h1>Orders</h1>

            <p class="lead">This is the listing of your previous orders!</p>
        </div>

        <table class="table table-hover align-middle">
            <thead>
            <tr>
                <th scope="col">Date</th>
                <th scope="col">Payment method</th>
                <th scope="col">Total price</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${orders}" var="customerOrder">
                <tr>
                    <td>${customerOrder.date}</td>
                    <td>Paypal/Card</td>
                    <td>${customerOrder.totalPayment} USD</td>
                </tr>
            </c:forEach>

            </tbody>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
