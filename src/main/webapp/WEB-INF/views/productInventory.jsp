<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function(){
        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br><br><br><br>
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <table class="table table-hover align-middle">
            <thead>
            <tr>
                <th scope="col">Photo Thumb</th>
                <th scope="col">Product Name</th>
                <th scope="col">Category</th>
                <th scope="col">Condition</th>
                <th scope="col">Price</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:25%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><i class="fas fa-info-circle"></i></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                        ><i class="fas fa-trash"></i></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                        ><i class="fas fa-edit"></i></a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <br>


        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>

        <br><br>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
