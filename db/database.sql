ALTER USER 'root'@'localhost' IDENTIFIED BY '1234';

USE motoresdb;

CREATE TABLE motor (
    motor_golpe_id VARCHAR(30) NOT NULL,
    motor_potencia VARCHAR(5) NOT NULL,
    motor_frame VARCHAR(30) DEFAULT NULL,
    motor_rpm INT(11) DEFAULT NULL,
    motor_voltaje INT(11) DEFAULT NULL,
    motor_amperaje DECIMAL(5,2) DEFAULT NULL,
    motor_hz INT(5) DEFAULT NULL,
    motor_kva INT(5) DEFAULT NULL,
    motor_lineas_salida INT(5) DEFAULT NULL,
    motor_numero_serie VARCHAR(50) DEFAULT NULL,
    motor_marca VARCHAR(30) DEFAULT NULL,
    motor_modelo VARCHAR(30) DEFAULT NULL,
    motor_placa BOOLEAN NOT NULL,
    motor_descripcion TEXT DEFAULT NULL,
    PRIMARY KEY(motor_golpe_id)
)

CREATE TABLE ordenSalida (
    ordenSalida_os_id VARCHAR(30) NOT NULL,
    ordenSalida_ot VARCHAR(10) DEFAULT NULL,
    ordenSalida_fecha_envio DATE NOT NULL,
    ordenSalida_fecha_promesa DATE DEFAULT NULL,
    ordenSalida_proceso VARCHAR(10) NOT NULL,
    ordenSalida_planta VARCHAR(20) NOT NULL,
    ordenSalida_mini VARCHAR(20) NOT NULL,
    ordenSalida_usuario VARCHAR(30) NOT NULL,
    ordenSalida_equipo VARCHAR(30) NOT NULL,
    ordenSalida_cuenta VARCHAR(50) DEFAULT NULL,
    ordenSalida_tag VARCHAR(50) DEFAULT NULL,
    ordenSalida_aprobador VARCHAR(50) DEFAULT NULL,
    ordenSalida_tipo VARCHAR(30) DEFAULT NULL,
    ordenSalida_requisicion VARCHAR(10) DEFAULT NULL,
    ordenSalida_ot_electronica VARCHAR(10) DEFAULT NULL,
    ordenSalida_fecha_requisicion DATE DEFAULT NULL,
    ordenSalida_fecha_autorizacion DATE DEFAULT NULL,
    ordenSalida_oc VARCHAR(10) DEFAULT NULL,
    ordenSalida_fecha_oc DATE DEFAULT NULL,
    ordenSalida_retardo_entrega INT(10) DEFAULT NULL,
    ordenSalida_fecha_entrega_equipo DATE DEFAULT NULL,
    ordenSalida_fecha_reporte DATE DEFAULT NULL,
    ordenSalida_status_reporte VARCHAR(10) DEFAULT NULL,
    ordenSalida_notas TEXT DEFAULT NULL,
    ordenSalida_status_proceso VARCHAR(10) NOT NULL,
    motor_golpe_id VARCHAR(30) NOT NULL,
    FOREIGN KEY (motor_golpe_id) REFERENCES motor (motor_golpe_id),
    PRIMARY KEY(ordenSalida_os_id)
)

CREATE TABLE proveedor (
    proveedor_codigo_id VARCHAR(30) NOT NULL,
    proveedor_reparacion_tipo VARCHAR(20) NOT NULL,
    proveedor_reparacion_eje VARCHAR(30) DEFAULT NULL,
    proveedor_rodamiento_L_C VARCHAR(30) DEFAULT NULL,
    proveedor_rodamiento_L_L VARCHAR(30) DEFAULT NULL,
    proveedor_cotizacion_costo DECIMAL(10,2) DEFAULT NULL,
    proveedor_cotizacion_fecha DATE DEFAULT NULL,
    proveedor_retardo_cotizacion VARCHAR(30) DEFAULT NULL,
    ordenSalida_os_id VARCHAR(30) NOT NULL,
    FOREIGN KEY (ordenSalida_os_id) REFERENCES ordenSalida (ordenSalida_os_id),
    PRIMARY KEY(proveedor_codigo_id)
)

CREATE TABLE imagenesOrdenSalida (
    imagen_id INT AUTO_INCREMENT PRIMARY KEY,
    ordenSalida_os_id VARCHAR(30) NOT NULL,
    tipo_imagen VARCHAR(20) DEFAULT NULL,
    ruta_imagen VARCHAR(255) DEFAULT NULL,
    FOREIGN KEY (ordenSalida_os_id) REFERENCES ordenSalida (ordenSalida_os_id)
)
 DESCRIBE motor;