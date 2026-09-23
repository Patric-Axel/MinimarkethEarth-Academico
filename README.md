# Minimarket Earth

Aplicacion web academica para la administracion y venta basica de productos de un minimarket. El proyecto aplica JSP, Servlets, JDBC, sesiones HTTP y operaciones CRUD con MySQL.

## Funcionalidades

- Inicio de sesion y registro de usuarios.
- Perfiles de administrador y cliente.
- Catalogo de productos por categorias: abarrotes, bebidas, licores y limpieza.
- Carrito de compras: agregar, aumentar, disminuir y eliminar productos.
- Registro de compras y detalle de boleta.
- Panel administrativo para productos, usuarios y reporte de ventas.
- Navegacion responsive con Bootstrap.

## Tecnologias

- Java 21
- JSP y Servlets (Servlet API 4.0)
- Apache Tomcat 9
- MySQL 8
- JDBC y Maven
- HTML, CSS, Bootstrap y JSTL

## Estructura del proyecto

```text
src/main/java/       Servlets, modelos, DAO y conexion a la base de datos
src/main/webapp/     Vistas JSP, estilos, componentes e imagenes
documentacion/       Script y material de apoyo de la base de datos
pom.xml              Dependencias y configuracion Maven
```

## Requisitos

- JDK 21.
- Apache Tomcat 9.
- MySQL en ejecucion.
- Eclipse/STS con soporte para Maven y servidores, o Maven desde terminal.

## Instalacion y ejecucion

1. Clona o descarga el repositorio.
2. Crea la base de datos ejecutando el script disponible en [documentacion/BASE DE DATOS MINIMARKEARTH.txt](documentacion/BASE%20DE%20DATOS%20MINIMARKEARTH.txt).
3. Revisa la conexion de [MySQLConexion.java](src/main/java/conexion/MySQLConexion.java) y ajusta host, puerto, usuario y contrasena de MySQL para tu equipo.
4. Importa el proyecto como **Existing Maven Project** en Eclipse/STS.
5. Configura un servidor **Apache Tomcat v9.0**, agrega el proyecto y ejecútalo.
6. Abre la aplicacion en:

   ```text
   http://localhost:8080/FinalProyectoLP/
   ```

   El contexto puede cambiar segun la configuracion de Tomcat. La raiz de la aplicacion redirige al login.

## Rutas principales

| Ruta | Descripcion |
| --- | --- |
| `/login.jsp` | Inicio de sesion |
| `/ClientePaginaPrincipal.jsp` | Inicio del cliente |
| `/Productos.jsp` | Categorias de productos |
| `/listprod` | Listado administrativo de productos |
| `/listusu` | Listado administrativo de usuarios |
| `/reporteVentas` | Reporte de ventas |

## Alcance academico

Este proyecto fue desarrollado con fines formativos. Su objetivo es demostrar el uso de Java web tradicional, arquitectura por capas basica (Servlet - DAO - MySQL), manejo de sesion y navegacion entre vistas JSP.

