USE Bodegas;

-- CREACION DE STORED PROCEDURES.

DELIMITER //
CREATE PROCEDURE Bodegas.actualizar_datos_clientes
(
   IDCLIENTES INT,
   NOMBRE VARCHAR (100),
   REFERENCIA VARCHAR (100),
   TELEFONO VARCHAR (200)
)
BEGIN
   UPDATE CLIENTES
   SET NOMBRE = NOMBRE,
	   TELEFONO = TELEFONO,
       REFERENCIA = REFERENCIA
   WHERE IDCLIENTES = IDCLIENTES;
   
   SELECT NOMBRE AS NOMBRE_ACTUALIZADO;
END //

 DELIMITER ;  
 
DELIMITER //
CREATE PROCEDURE obtener_empleado
(
    IDEMPLEADOS INT
)
BEGIN
    SELECT * FROM EMPLEADOS WHERE IDEMPLEADOS = IDEMPLEADOS;
END //

DELIMITER ;