create database generation;
use generation;
/*Se crea la tabla alumnos*/
create table Alumnos
(
Id_Alumno int NOT NULL,
Nombre_Alumno varchar(45) NOT NULL,
Domicilio_Alumno varchar(45),
Edad_Alumno int (3),
Sexo_Alumno varchar(15),
primary key (Id_Alumno)
);

DESCRIBE Alumnos;
INSERT INTO Alumnos
(Id_Alumno, Nombre_Alumno, Domicilio_Alumno, Edad_Alumno, Sexo_Alumno)
VALUES(1, 'Ivan', 'cdd', 45, 'Hombre'),
(2, 'Carlos', 'cddCarlos', 46, 'Hombre'),
(3, 'Rodry', 'cicd', 47, 'Hombre'),
(4, 'Licha', 'cdod', 48, 'Mujer'),
(5, 'Lupita', 'cddp', 49, 'Mujer');

SELECT * FROM Alumnos; 
use generation;
ALTER TABLE alumnos add idCohort int;
ALTER TABLE alumnos add foreign key(idCohort) references cohort(idCohort);

create user 'usuario@localhost' identified by 'usuario';
grant all privileges on *.* to 'usuario@localhost';