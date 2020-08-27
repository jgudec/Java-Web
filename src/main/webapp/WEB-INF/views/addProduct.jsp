<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br><br><br><br>
            <h1>Add Product</h1>
            <p class="lead">Fill the below information to add a product.</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <div class="form-outline">
                <form:input path="productName" id="name" class="form-Control"/>
                <label class="form-label" for="name">Name</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            </div>

        </div>
        <br>
        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Smartphone" />Smartphone</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="accessory" />Accessory</label>
        </div>
        <br>
        <div class="form-group">
            <div class="form-outline">
                <form:textarea path="productDescription" id="description" class="form-Control"/>
                <label class="form-label" for="description">Description</label>
            </div>
        </div>
        <br>
        <div class="form-outline">
            <form:input path="productPrice" id="price" class="form-control"/>
            <label class="form-label" for="price">Price</label>
        </div>
        <br>
        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used" />Used</label>
        </div>
        <br>
        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive" />Inactive</label>
        </div>
        <br>
        <div class="form-outline">
            <form:input path="unitInStock" id="unitInStock" class="form-control"/>
            <label class="form-label" for="unitInStock">Units in Stock</label><form:errors path="unitInStock"
                                                                                           cssStyle="color: #ff0000;" />
        </div>
        <br>
        <div class="form-outline">
            <form:input path="productManufacturer" id="manufacturer" class="form-control"/>
            <label class="form-label" for="productManufacturer">Manufacturer</label>
        </div>
        <br>
        <div class="form-file">
            <form:input id="productImage" path="productImage" type="file" class="form-file-input" />
            <label class="form-file-label" for="productImage">
                <span class="form-file-text">Choose file...</span>
                <span class="form-file-button">Browse</span>
            </label>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>

    </div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
