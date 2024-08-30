  PROYECTO SQL 
 
---
 Introducción: descripción de la base de datos 
--
La APP fue creada para abarcar distintas bodegas de vinos en todo el territorio argentino para que cualquier persona pueda acceder a la ubicación de diferentes bodegas y obtener determinada información.  Se le asignaron varias operaciones para poder facilitar el acceso a datos y tener un control general sobre ventas, personal asignado, entre otros. 
 
---
 Objetivo: 
--
Diseñar e implementar una base de datos relacional que pueda facilitar al usuario la manera de poder obtener información detallada sobre las ventas realizadas, tener una buena gestión sobre el personal asignado y poder llevar un registro sobre las ventas realizadas. 

---
 Situación problemática: 
--
Se vio en la necesidad crear una base de datos que pueda agilizar algunas operaciones para poder ayudar al cliente en tener un registro detallado sobre el desempeño de su emprendimiento y ayudar a los usuarios que accedan a la APP para que puedan tener la ubicación de las bodegas en todo el territorio argentino y alguna información que el cliente vea pertinente que el usuario pueda acceder. 

---
 Resolución de la problemática: 
--
Se dispuso crear e implementar una base de datos que aporte una solución al cliente sobre la problemática planteada. En respuesta, se procedió a la elaboración de dicha base de datos en la cual se priorizo a que sea eficaz y que pueda proporcionar información detallada de varios ítems tanto para el cliente como para el usuario. Por este motivo, se procedió a realizar un esquema que muestre registros sobre las ventas realizadas, registro detallado sobre el stock disponible, tener acceso a la ubicación de cada bodega, etc. 

---
Diagrama de entidad relación de la DB:

![diagrama3](https://github.com/user-attachments/assets/dd8f35ef-f72b-46fa-95cb-3e6b5cf5aad6)


---
 Descripción de la base de datos: 
---
Base de datos diseñada para mostrar la ubicación de las bodegas y obtener determinada información sobre dichas bodegas y poder realizar operaciones detalladas.

---
Tablas
---
```
BODEGAS 
```
Contiene información sobre las bodegas. 

Atributos: IDBODEGAS, IDEMPLEADOS, NOMBRE, UBICACION, TELEFONO, EMAIL. 
```
PROVEEDORES 
```
Contiene información de contacto sobre los proveedores. 

Atributos: IDPROVEEDORES, NOMBREPROVEEDOR, TELEFONO, UBICACION, TARIFA, EMAIL. 
```
CLIENTES 
```
Contiene información sobre el cliente y una referencia. 

Atributos: IDCLIENTES, NOMBRE, REFERENCIA, TELEFONO, EMAIL. 
```
CATEGORIA_VINOS 
```
Contiene la categoría de vinos y una breve descripción. 

Atributos: IDCATEGORIA_VINOS, IDVINOS, NOMBRE, DESCRIPCION. 
```
VINOS 
```
Contiene información sobre los vinos y la variedad. 

Atributos: IDVINOS, IDBODEGAS, NOMBRE, VARIEDAD, ANIO, PRECIO, CANTIDAD, IDCATEGORIA_VINOS. 
```
EMPLEADOS 
```
Contiene información completa sobre los empleados. 

Atributos: IDEMPLEADOS, IDBODEGAS, NOMBRE, PUESTO, EMAIL, TELEFONO, FECHA_INGRESO. 
```
PROMOCIONES 
```
Contiene información sobre las promociones vigentes y su descuento. 

Atributos: IDPROMOCIONES, IDVINOS, NOMBRE, DESCRIPCION, FECHA_INICIO, FECHA_FIN, DESCUENTO. 
```
VENTAS 
```
Contiene información detalla de las ventas realizadas a cada cliente. 

Atributos: IDVENTAS, IDCLIENTES, IDVINOS, IDBODEGAS, CANTIDAD, PRECIO_TOTAL, FECHA. 

---
> Listado De Las Tablas Con La Descripcion De Su Estructura.

Tabla De BODEGAS

![tablabodegas](https://github.com/user-attachments/assets/abc881ab-f78a-4d1b-9ca4-1d8558b17888)



Tabla PROVEEDORES 

![tablaproveedores](https://github.com/user-attachments/assets/765607de-e745-4444-9f56-c4d80d658427)


Tabla CLIENTES

![tablaclientes](https://github.com/user-attachments/assets/a2ae2d50-7911-4793-a04a-494b5f9cbee2)


Tabla VINOS

![tablavinos](https://github.com/user-attachments/assets/dd750451-db8a-4362-ab20-6cdf1f0e0884)


Tabla VENTAS

![tablaventas](https://github.com/user-attachments/assets/9dc8d6e2-cc6f-43f8-830b-387b4afcd06a)


Tabla EMPLEADOS

![tablaempleados](https://github.com/user-attachments/assets/6dc369ca-bbec-48be-9b56-860dadd1a4d7)


Tabla De CATEGORIA_VINOS

![categoriavinos](https://github.com/user-attachments/assets/fd66bc3a-f717-4ee0-b99a-bc2ac766cf98)


Tabla De PROMOCIONES

![tablapromociones](https://github.com/user-attachments/assets/abe7bb6a-2189-4d3b-9d17-975fc1e0b016)

---
Pasos para acceder a la base de Datos
---

Primero se debe tener instalado alguna herramienta virtual de diseño para base de datos, ya sea workbench o DBeaver.
En el caso de Workbench y DBeaver, para poder acceder a la base de datos hay que clickear en el signo + como muestra la imagen a continuacion:


![connectios](https://github.com/user-attachments/assets/9cb7cf88-974a-4f56-b372-f951b734bba4)

Al hacer click se abrira una ventana en la cual se ingresaran el Username y el Password que se encontraran almacenados en el archivo .env


![acceso](https://github.com/user-attachments/assets/03ed0d0e-dbd5-442f-a151-eec99efac91a)

---
> Objetos De La Base De Datos
Una vez creada la base de datos, se procedio a realizar 5 vistas para diferentes areas con una determinanda finalidad, las cuales se detallan a continuacion.
---
VISTAS:
---
Vista creada para la administracion en la cual pueda obtener el nombre del cliente, un telefono del cliente y una ID de la bodega en la cual realizo la compra.

"Bodegas.view_admin_clientes_bodegas"
---
> SELECT
* FROM Bodegas.view_admin_clientes_bodegas;

Vista creada para obtener informacion de las ventas y un ID de la bodega que se realizo la venta.

"Bodegas.view_admin_ventas_bodegas"
---
> SELECT
* FROM Bodegas.view_admin_ventas_bodegas;

Vista creada para obtener nombre del empleado, puesto actual, fecha de ingreso y en que bodega trabaja el empleado.

"Bodegas.view_admin_empleados"

---
> SELECT
* FROM Bodegas.view_admin_empleados;

Vista creada para administracion que permite obtener informacion sobre vinos.

"Bodegas.view_admin_vinos_categoria_vinos"
---
> SELECT
* FROM Bodegas.view_admin_vinos_categoria_vinos;

Vista creada para obtener informacion de proveedores.

"Bodegas.view_admin_proveedores"
---
> SELECT
* FROM Bodegas.view_admin_proveedores;

---
TRIGGERS:
---
Se procedio a crear 2 tipos de trigger para que cumplan determinada funcion, quedan detallados a continuacion.

Nombre del trigger: trg_cheker_promociones.
Funcion: Se utilizara para poder verificar que el descuento sea valido.
Descripcion: En este trigger se uso la tabla PROMOCIONES para poder recibir informacion sobre los descuentos vigentes, los descuentos que llegaran a caducar y de cuanto es el descuento.

Nombre del trigger: update_empleados.
Funcion: Creado para notificar la actualizacion de datos de los empleados.
Descripcion: En este trigger se uso la tabla EMPLEADOS para poder actualizar informacion de cada empleado teniendo los atributos IDEMPLEADO, NOMBRE, PUESTO y FECHA_INGRESO.

---
FUNCIONES:
---
Se elaboraron 2 funciones para la base de datos que retornan información relevante.
1.
Nombre De La Funcion: cantidad_vinos_vendidos(IDVINOS INT)
Descripcion: Mediante su ID retornara la cantidad de vinos vendidos.
2.
Nombre De La Funcion: cantidad_personal_contratado(IDVEMPLEADOS INT).
Descripcion: Funcion creada para obtener la cantidad de personal contratado.


como correr mi codigo

```bash
  make
``` 
