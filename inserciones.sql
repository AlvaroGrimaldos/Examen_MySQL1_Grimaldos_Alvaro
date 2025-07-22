-- Inserciones en cada una de las tablas de la base de datos

INSERT INTO medico (documento, prim_nombre , prim_apellido , tipo, hor_consultas, per_sustitucion) VALUES
(100000001, 'Jose', 'Martinez', 'Titular', 20, 0),
(100000002, 'Juan', 'Perez', 'Titular', 28, 0),
(100000003, 'Maria', 'Martinez', 'Interino', 15, 0),
(100000004, 'Miguel', 'Uribe', 'Sustituto', 16, 4),
(100000005, 'Carlos', 'Caceres', 'Sustituto', 23, 3);

INSERT INTO empleado (documento, prim_nombre, prim_apellido, tipo) VALUES
(100000023, 'Andrea', 'Sarmiento', 'Auxiliar de Enfermeria'),
(100000024, 'Alvaro', 'Grimaldos', 'Celador'),
(100000025, 'Laia', 'Carrillo', 'Auxiliar de Enfermeria'),
(100000026, 'Nicolas', 'Ardila', 'ATS'),
(100000027, 'Kevin', 'Romero', 'ATS'),
(100000028, 'Andrea', 'Quintanilla', 'Administrativo'),
(100000029, 'Manuel', 'Sarmiento', 'Administrativo');

INSERT INTO paciente (documento, prim_nombre, prim_apellido, fecha_nacimiento, sexo, id_medico) VALUES
(100002321, 'Maria', 'Estupiñan', '2007-09-21', 'F', 1),
(100002322, 'Mariana', 'Jimenez', '2007-08-20', 'F', 3),
(100002323, 'Mar', 'Caceres', '2006-09-25', 'F', 3),
(100002324, 'Mario', 'Florez', '2005-05-11', 'M', 1),
(100002325, 'Andres', 'Sarmiento', '2003-04-22', 'M', 2),
(100002326, 'Flor', 'Pinto', '2005-08-15', 'F', 2),
(100002327, 'Mariano', 'Closs', '2004-02-06', 'M', 4),
(100002328, 'Ximena', 'Cuadros', '2003-11-19', 'O', 5);

INSERT INTO vacaciones_empleados (fecha_inicio, fecha_fin, documento) VALUES
('2024-09-21', '2024-10-10', 100000023),
('2024-08-21', '2024-09-10', 100000023),
('2024-08-10', '2024-08-20', 100000024),
('2024-04-19', '2024-04-30', 100000027),
('2024-10-21', '2024-11-10', 100000028),
('2024-01-01', '2024-01-30', 100000029),
('2024-02-11', '2024-02-28', 100000025),
('2024-04-21', '2024-03-20', 100000026);

INSERT INTO vacaciones_medicos (fecha_inicio, fecha_fin, documento) VALUES
('2023-09-21', '2023-10-10', 100000003),
('2023-08-21', '2023-09-10', 100000004),
('2023-08-10', '2023-08-20', 100000001),
('2023-04-19', '2023-04-30', 100000001),
('2023-10-21', '2023-11-10', 100000005),
('2023-01-01', '2023-01-30', 100000004),
('2023-02-11', '2023-02-28', 100000002),
('2023-04-21', '2023-03-20', 100000004);