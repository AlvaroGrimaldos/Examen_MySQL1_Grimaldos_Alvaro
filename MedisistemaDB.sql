-- Creacion de la base de datos MedisistemaDB
CREATE DATABASE medisistemaDB;
USE medisistemaDB;

-- Creacion de las tablas:

-- 1. Tabla medico
CREATE TABLE medico (
	id_medico INT PRIMARY KEY AUTO_INCREMENT,
	documento INT UNIQUE,
	prim_nombre VARCHAR(20) NOT NULL,
	prim_apellido VARCHAR(30) NOT NULL,
	tipo ENUM("Titular", "Interino", "Sustituto") NOT NULL,
	hor_consultas BOOLEAN NOT NULL,
	per_sustitucion INT NOT NULL
);

-- 2. Tabla empleado
CREATE TABLE empleado (
	id_empleado INT PRIMARY KEY AUTO_INCREMENT,
	documento INT UNIQUE,
	prim_nombre VARCHAR(20) NOT NULL,
	prim_apellido VARCHAR(30) NOT NULL,
	tipo ENUM("ATS", "Auxiliar de Enfermeria", "Celador", "Administrativo") NOT NULL
);

-- 3. Tabla paciente
CREATE TABLE paciente (
	id_paciente INT PRIMARY KEY AUTO_INCREMENT,
	documento INT UNIQUE,
	prim_nombre VARCHAR(20) NOT NULL,
	prim_apellido VARCHAR(30) NOT NULL,
	fecha_nacimiento DATE NOT NULL,
	sexo ENUM("M", "F", "O", "X") DEFAULT ("X"),
	id_medico INT,
	FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);

-- 4. Tabla vaciones de los medicos
CREATE TABLE vacaciones_medicos (
	id_vacaciones INT PRIMARY KEY AUTO_INCREMENT,
	fecha_inicio DATE NOT NULL,
	fecha_fin DATE NOT NULL,
	documento INT,
	FOREIGN KEY (documento) REFERENCES medico(documento)
);

-- 5. Tabla vacaciones de los empleados
CREATE TABLE vacaciones_empleados (
	id_vacaciones INT PRIMARY KEY AUTO_INCREMENT,
	fecha_inicio DATE NOT NULL,
	fecha_fin DATE NOT NULL,
	documento INT,
	FOREIGN KEY (documento) REFERENCES empleado(documento)
);