# Examen MySQL I - Alvaro Andres Grimaldos

## Creacion
Para la creacion es necesario copiar el archivo MedisistemaDB.sql en el script de nuestra base de datos.

## Insercion 
Para realizar la insercion de cada una de las tablas es necesario copiar el archivo inserciones.sql dentro del script de nuestra base de datos.

## Consultas

1. **Numero de pacientes atendidos por cada medico:**
    SELECT *
    FROM medico m
    JOIN paciente p ON p.id_medico = m.id_medico;

2. **Total de dias de vacaciones planificadas y disfrutadas por cada empleado**
    SELECT e.prim_nombre, e.prim_apellido, e.tipo, ve.fecha_inicio, ve.fecha_fin  
    FROM empleado e 
    JOIN vacaciones_empleados ve ON ve.documento = e.documento;

3. **Medicos con mayor cantida de horas de consulta a la semana**
    SELECT m.prim_nombre Nombre, m.prim_apellido Apellido, m.tipo, m.hor_consultas "Horas Consultas"
    FROM medico m 
    ORDER BY m.hor_consultas DESC
    LIMIT 3; 

4. **Numero de sustituciones realizadas por cada medico sustituto**
    SELECT m.prim_nombre Nombre, m.prim_apellido Apellido, m.tipo, m.per_sustitucion "Sustituciones"
    FROM medico m 
    WHERE m.tipo = 'Sustituto';

5. **Numero de medicos que estan actualmente en sustitucion**
    SELECT COUNT(*) "# Doctores en Sustitucion"
    FROM medico m 
    WHERE m.tipo = 'Sustituto';
    
6. **Horas totales de consulta por medico por dia  de la semana**
    SELECT m.prim_nombre Nombre, m.prim_apellido Apellido, m.tipo, m.hor_consultas "Horas Consultas x semana"
    FROM medico m;

7. **Medico con mayor cantidad de pacientes asignados**
    SELECT m.prim_nombre Nombre, m.prim_apellido Apellido, m.tipo, p.id_paciente  
    FROM medico m
    JOIN paciente p ON m.id_medico = p.id_medico;

8. **Empleados con mas de 10 dias de vaciones disfrutadas**


9. **Medicos que actualmente estan realizando una sustitucion**
    SELECT m.prim_nombre Nombre, m.prim_apellido Apellido, m.tipo, m.per_sustitucion 
    FROM medico m 
    WHERE m.tipo = 'Sustituto';

10. **Promedio de horas de consulta por medico por dia de la semana**
    SELECT m.prim_nombre Nombre, m.prim_apellido Apellido, m.tipo, (hor_consultas / 7) "Horas Consultas x dia"
    FROM medico m;

