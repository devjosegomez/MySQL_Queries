use generation;
create table Alumnos(
	Id_Alumno int primary key not null, 
    Nombre_Alumno varchar(45) not null,
    Domicilio_Alumno varchar(45),
    Edad_Alumno int, 
    Sexo_Alumno varchar(15)
);