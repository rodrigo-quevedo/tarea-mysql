DROP TABLE locaciones;

CREATE TABLE locaciones (
	ID_LOCACION INTEGER PRIMARY KEY,
	DIRECCION VARCHAR(60) NOT NULL,
	CODIGO_POSTAL VARCHAR(15) NOT NULL,
	CIUDAD VARCHAR (25) NOT NULL,
	ESTADO_PROVINCIA VARCHAR(25),
	ID_PAIS VARCHAR(2) NOT NULL
);

CREATE TABLE empleados (
	ID_EMPLEADO INTEGER PRIMARY KEY,
	NOMBRE VARCHAR(25) NOT NULL,
	APELLIDO VARCHAR(20) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL,
	TELEFONO VARCHAR(25) NOT NULL,
	FECHA_EN VARCHAR(10) NOT NULL,
	ID_TRABAJO VARCHAR(10) NOT NULL,
	SALARIO FLOAT(9,2) NOT NULL,
	COMISION FLOAT(9,2) NOT NULL,
	ID_MANAGER INTEGER
);

CREATE TABLE departamentos (
	ID_DEPARTAMENTO INTEGER NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(30) NOT NULL,
	ID_MANAGER INTEGER,
	ID_LOCACION INTEGER NOT NULL,
	FOREIGN KEY(ID_MANAGER) REFERENCES empleados(ID_EMPLEADO),
	FOREIGN KEY (ID_LOCACION) REFERENCES locaciones(ID_LOCACION)
);


