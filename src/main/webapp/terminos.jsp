<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MarketEarth/TyC</title>
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


<section class="container py-5" style="max-width: 1000px;">
    
    <h3 class="mb-4 fw-bold text-center">MarketEarth</h3>
    <p class="text-muted">
        Bienvenido a la empresa MarketEarth y su página web 
        www.corporacionliderperu.com constituida bajo las leyes peruanas, cuya actividad principal 
        es permitir la exhibición y comercialización de productos en sus diferentes categorías.
        <br><br>
        El sitio web www.MarketEarth.com es controlado y operado por MarketEarth. 
        La empresa establece los términos y condiciones del sitio web contenidas y descritas en la legislación 
        del sitio web. El uso y acceso a este sitio web se rige por estos términos y condiciones; así como, 
        a la vigente en la República del Perú. En consecuencia, todas las visitas y transacciones que se 
        realicen en este sitio web; así como, sus efectos jurídicos, quedarán regidos por estas reglas contenidas 
        a la legislación aplicable en Perú.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">I. Modalidades de Entrega</h4>
    <p>
        El cliente puede elegir entre las opciones de despacho a domicilio y recojo en tienda, estas opciones se 
        dispondrán en función de la disponibilidad de stock de los productos que comprenden el pedido.
    </p>

    <h5 class="fw-bold mt-3">Despacho a domicilio</h5>
    <p>
        Disponible para pedidos realizados vía online o vía telefónica.
        <br><br>
        · Aplica tanto para pagos en efectivo como pagos con transferencia bancaria.<br>
        · La entrega se realizará en el transcurso de 12 a 48 horas del día de la compra.<br>
        · Puedes hacer tus pedidos vía online las 24 horas del día.<br>
        · El costo de envío varía de acuerdo al distrito y será detallado al momento de seleccionar 
        el método de entrega. Si el cliente selecciona un distrito incorrecto, se generará el cobro 
        automáticamente si corresponde.<br>
        · Los productos están limitados a la disponibilidad de stock.<br>
        · Si por alguna razón no se pudiera brindar el servicio en las condiciones indicadas, este método 
        podrá ser deshabilitado.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">II. Recojo en Tienda</h4>
    <p>
        El plazo máximo para recoger el pedido es de 24 horas desde el horario coordinado.  
        Pasado este tiempo, el pedido será anulado y devuelto a almacén. En caso de pagos adelantados, 
        se procesará la devolución en un máximo de 48 horas.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">III. Cobertura de Despacho a Domicilio</h4>
    <p>
        Los productos comprados podrán ser entregados a domicilio en los siguientes distritos:  
        Barranco, Miraflores, Surquillo, San Isidro, San Borja, San Luis, Chorrillos, Breña, Surco, 
        Pueblo Libre, Lince, Jesús María, Magdalena del Mar, San Miguel, La Victoria y La Molina.  
        Otros distritos se evalúan previa coordinación.
    </p>


    <h4 class="mt-5 mb-3 fw-semibold">IV. Horarios de Despacho y Precios de Envío</h4>
    <p>
        Los despachos se realizan entre las 7:00 a.m. y 8:00 p.m., dentro de un plazo de 1 a 3 días.  
        Una vez seleccionados los datos y método de pago, se enviará un correo con la fecha aproximada de entrega.  
        <br><br>
        El servicio de despacho tiene un tiempo máximo de espera de 15 minutos. Pasado este periodo, se retirará el pedido 
        y se aplicará el cobro correspondiente.  
        <br><br>
        Es responsabilidad del cliente ingresar correctamente los datos de entrega y presentar 
        DNI/CE/Pasaporte al recibir el pedido.  
        <br><br>
        No se realizan despachos los días 25/12, 01/01, ni domingos y feriados.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">V. Medios de Pago</h4>
    <p>
        · Pedido mínimo: S/ 49.00<br>
        · Modalidades: transferencia bancaria (BCP, BBVA, Scotiabank) o pago en efectivo contra entrega.<br>
        · Todo depósito debe validarse con el área de caja.<br>
        · El monto final puede variar según el peso de los productos.
    </p>
    
    <h4 class="mt-5 mb-3 fw-semibold">VI. Productos Sustitutos</h4>
    <p>
        Si algún producto no está disponible, se contactará al cliente dentro de 24 horas para coordinar 
        un sustituto. Si no hay respuesta, el pedido se enviará sin dicho producto.
    </p>
    
    <h4 class="mt-5 mb-3 fw-semibold">VII. Precios y Promociones</h4>
    <p>
        Los precios son válidos mientras aparezcan publicados en el sitio web.  
        Estos incluyen IGV pero no costos adicionales como envío u otros ítems no especificados.  
        Las promociones del sitio pueden diferir de las tiendas físicas.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">VIII. Stock</h4>
    <p>
        Los productos pueden actualizarse, modificarse o descontinuarse en cualquier momento sin 
        responsabilidad hacia el usuario.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">IX. Consentimiento de Pedidos</h4>
    <p>
        La compra se concretará solo tras la validación de la empresa:  
        <br>
        · Pedido mínimo S/ 100.00<br>
        · Verificación de datos<br>
        · Pago acreditado<br>
        · Cliente mayor de 18 años  
        <br><br>
        La confirmación final se envía al correo del usuario.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">X. Sobre la Entrega del Producto</h4>
    <p>
        El cliente debe presentar su DNI y revisar el estado de los productos antes de la aceptación.  
        Una vez firmado el formato de conformidad, no se aceptan reclamos por daños físicos.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">XI. Modificación y/o Cancelación</h4>
    <p>
        · Cancelación permitida dentro de las primeras 24 horas.<br>
        · Reprogramaciones previa coordinación.<br>
        · La empresa puede cancelar pedidos por falta de stock, falta de contacto o exceso de unidades en promociones.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">XII. Derechos del Usuario</h4>
    <p>
        El usuario goza de los derechos establecidos en la Ley N° 29571 y Ley 29733.  
        Puede ejercer los derechos ARCO (Acceso, Rectificación, Cancelación y Oposición).
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">XIII. Call Center</h4>
    <p>
        Teléfono: 241-6422 / 242-6229  
        <br>
        Atención: Lunes a sábado de 8:00 a.m. a 5:00 p.m.  
        <br><br>
        El usuario debe identificarse con su DNI/CE para recibir soporte.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">XIV. Capacidad Legal</h4>
    <p>
        El servicio solo está disponible para mayores de 18 años con capacidad legal para contratar.
    </p>

    <h4 class="mt-5 mb-3 fw-semibold">XV. Delimitación de Responsabilidades</h4>
    <p>
        La empresa no se responsabiliza por daños derivados de interrupciones o fallas en el servicio.
    </p>


    <h4 class="mt-5 mb-3 fw-semibold">XVI. Fotografías</h4>
    <p>
        Las imágenes son referenciales y pueden variar respecto al producto real.  
        La empresa puede modificar esta política según cambios legales vigentes.
    </p>

</section>





<jsp:include page="./componentes/Footer.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

</body>


</html>