<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MarketEarth/Nosotros</title>
<link rel="stylesheet" href="css/estilos.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<!-- librerias para q el carrusel funcione: OWL CAROUSEL -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"/>

<!-- JQUERY  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- OWL CAROUSEL JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
</head>




<body>

<jsp:include page="./componentes/NAVMENU.jsp"></jsp:include>




<section class="py-5 container">
    <div class="row align-items-center">
        <div class="col-md-6">
            <h2 class="mb-3 fw-bold">¿Quiénes somos?</h2>
            <p class="lead">
                Somos MarketEarth, un comercio comprometido en ofrecer productos de calidad,
                buen servicio y precios accesibles para todos nuestros clientes.
            </p>
            <p>
                Nuestro objetivo es acercarte los mejores productos del mercado,
                brindándote confianza, seguridad y atención personalizada.
            </p>
        </div>
        <div class="col-md-6 text-center">
            <img src="./imagenes/nosotrospersonal.jpg" class="img-fluid rounded shadow" alt="">
        </div>
    </div>
</section>


<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center fw-bold mb-4">Nuestras Tiendas</h2>
        <div class="row text-center">
            <div class="col-md-4">
                <img src="./imagenes/surquillo0.jpg" class="img-fluid rounded mb-3 shadow" alt="">
                <h5>Sede Surquillo</h5>
                <p>Jr Leoncio Prado 458</p>
            </div>

            <div class="col-md-4">
                <img src="./imagenes/lince.jpg" class="img-fluid rounded mb-3 shadow" alt="">
                <h5>Sede San Miguel</h5>
                <p>Av. Universitaria 1200</p>
            </div>

            <div class="col-md-4">
                <img src="./imagenes/surquillo.jpg" class="img-fluid rounded mb-3 shadow" alt="">
                <h5>Sede Miraflores</h5>
                <p>Av. Arequipa 3050</p>
            </div>
        </div>
    </div>
</section>

<section class="py-5 container">
    <div class="row align-items-center">
        <div class="col-md-6 text-center order-md-2">
            <img src="./imagenes/personalcompro.jpg" class="img-fluid rounded shadow" alt="">
        </div>
        <div class="col-md-6 order-md-1">
            <h2 class="mb-3 fw-bold">Nuestro compromiso</h2>
            <p class="lead">
                Nos enfocamos en brindar una experiencia única a nuestros clientes,
                esforzándonos por ofrecer productos confiables y atención de calidad.
            </p>
            <p>
                Creemos en la transparencia, la responsabilidad y el servicio oportuno,
                buscando siempre mejorar y ayudarte cuando más lo necesites.
            </p>
        </div>
    </div>
</section>





<jsp:include page="./componentes/Footer.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

</body>


</html>