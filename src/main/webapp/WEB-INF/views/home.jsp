<%@include file="/WEB-INF/views/template/header.jsp" %>



<!-- Carousel wrapper -->
<div id="carouselBasicExample" class="carousel slide carousel-fade" data-ride="carousel">

    <!-- Inner -->
    <div class="carousel-inner">
        <!-- Single item -->
        <div class="carousel-item active">
            <img
                    src="https://archello.s3.eu-central-1.amazonaws.com/images/2013/04/08/IMG0408.1506070028.3147.jpg"
                    class="d-block w-100"
                    alt="..."
                    style="height: 100%;"
            />
            <div class="carousel-caption d-none d-md-block">
                <h2>Smartphone Shop</h2>
                <p>The perfect spot to get a new smartphone and accessories for it.</p>
            </div>
        </div>


    </div>
    <!-- Inner -->


</div>
<!-- Carousel wrapper -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-6 text-center">
            <img src="<c:url value="/resources/images/phone.png" />" alt="Instrument
                Image" width="140" height="140"></a>
            <h2>Smartphones</h2>
            <p>Thinking about buying a new phone? Fear not, we have a wide choice of those.</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-6 text-center">
            <img src="<c:url value="/resources/images/accessory.png" />" alt="Instrument
                Image" width="140" height="140"></a>
            <h2>Accessories</h2>
            <p>Everything you can think of for your device, from screen protectors to speakers.</p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
    <br> <br>

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

