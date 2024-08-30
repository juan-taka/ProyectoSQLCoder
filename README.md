PROYECTO SQL 

 

 Introducción: descripción de la base de datos 

La APP fue creada para abarcar distintas bodegas de vinos en todo el territorio argentino para que cualquier persona pueda acceder a la ubicación de diferentes bodegas y obtener determinada información.  Se le asignaron varias operaciones para poder facilitar el acceso a datos y tener un control general sobre ventas, personal asignado, entre otros. 
 

Objetivo: 

Diseñar e implementar una base de datos relacional que pueda facilitar al usuario la manera de poder obtener información detallada sobre las ventas realizadas, tener una buena gestión sobre el personal asignado y poder llevar un registro sobre las ventas realizadas. 


Situación problemática: 

Se vio en la necesidad crear una base de datos que pueda agilizar algunas operaciones para poder ayudar al cliente en tener un registro detallado sobre el desempeño de su emprendimiento y ayudar a los usuarios que accedan a la APP para que puedan tener la ubicación de las bodegas en todo el territorio argentino y alguna información que el cliente vea pertinente que el usuario pueda acceder. 


Resolución de la problemática: 

Se dispuso crear e implementar una base de datos que aporte una solución al cliente sobre la problemática planteada. En respuesta, se procedió a la elaboración de dicha base de datos en la cual se priorizo a que sea eficaz y que pueda proporcionar información detallada de varios ítems tanto para el cliente como para el usuario. Por este motivo, se procedió a realizar un esquema que muestre registros sobre las ventas realizadas, registro detallado sobre el stock disponible, tener acceso a la ubicación de cada bodega, etc. 


Diagrama de entidad relación de la DB:

![diagramasql4](https://github.com/user-attachments/assets/b0b10b1a-78a5-4d58-bccb-b339f03bccff)



Descripción de la base de datos: 

Base de datos diseñada para mostrar la ubicación de las bodegas y obtener determinada información sobre dichas bodegas y poder realizar operaciones detalladas.

Tablas
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


Listado De Las Tablas Con La Descripcion De Su Estructura.

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






































## como correr mi codigo

```bash
  make
``` 
